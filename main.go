package main

import (
	"context"
	"encoding/json"
	"flag"
	"fmt"
	"log"
	"os"
	"path/filepath"
	"regexp"
	"strconv"
	"strings"
	"time"

	"go-seed/ent"

	_ "github.com/lib/pq"
	"golang.org/x/crypto/bcrypt"
)

var (
	dataDir string
	dbURL   string
)

func init() {
	flag.StringVar(&dataDir, "data-dir", "", "Path to the directory containing JSON data files")
	flag.StringVar(&dbURL, "db-url", "", "PostgreSQL Connection URI (e.g. postgres://user:pass@host:port/db?sslmode=disable)")
}

func loadEnv(path string) {
	bytes, err := os.ReadFile(path)
	if err != nil {
		return
	}
	lines := strings.Split(string(bytes), "\n")
	for _, line := range lines {
		line = strings.TrimSpace(line)
		if line == "" || strings.HasPrefix(line, "#") {
			continue
		}
		parts := strings.SplitN(line, "=", 2)
		if len(parts) != 2 {
			continue
		}
		key := strings.TrimSpace(parts[0])
		val := strings.TrimSpace(parts[1])
		if (strings.HasPrefix(val, "\"") && strings.HasSuffix(val, "\"")) ||
			(strings.HasPrefix(val, "'") && strings.HasSuffix(val, "'")) {
			val = val[1 : len(val)-1]
		}
		if os.Getenv(key) == "" {
			os.Setenv(key, val)
		}
	}
}

func main() {
	flag.Parse()

	// Load local .env files if present
	loadEnv(".env")
	loadEnv("../.env")

	// 1. Locate Data Directory
	if dataDir == "" {
		// Try to find the data directory automatically
		pathsToTry := []string{
			"prisma/data",
			"../prisma/data",
			"./data",
		}
		for _, p := range pathsToTry {
			if info, err := os.Stat(p); err == nil && info.IsDir() {
				dataDir = p
				break
			}
		}
	}
	if dataDir == "" {
		log.Fatal("❌ Error: Could not locate prisma/data directory. Please specify it using the -data-dir flag.")
	}
	fmt.Printf("📂 Using data directory: %s\n", dataDir)

	// 2. Resolve Connection URI
	if dbURL == "" {
		dbURL = os.Getenv("DATABASE_URL")
	}
	if dbURL == "" {
		// Fallback to separate env variables
		host := getEnv("DB_HOST", "localhost")
		port := getEnv("DB_PORT", "5432")
		user := getEnv("DB_USER", "postgres")
		pass := getEnv("DB_PASSWORD", "postgres")
		dbname := getEnv("DB_NAME", "school")
		dbURL = fmt.Sprintf("postgres://%s:%s@%s:%s/%s?sslmode=disable", user, pass, host, port, dbname)
	}

	fmt.Printf("🔌 Connecting to Database via Ent...\n")
	client, err := ent.Open("postgres", dbURL)
	if err != nil {
		log.Fatalf("❌ Failed to connect to database via Ent: %v", err)
	}
	defer client.Close()

	ctx := context.Background()

	// Run migrations (schema creation)
	fmt.Println("🏗️ Creating schema resources...")
	if err := client.Schema.Create(ctx); err != nil {
		log.Fatalf("❌ Schema creation failed: %v", err)
	}
	fmt.Println("✅ Schema resources created")

	// 3. Start Seeding
	fmt.Println("\n🌱 Starting seed…\n")

	// Wave 1 — no dependencies
	deptMap, err := seedDepartments(ctx, client)
	if err != nil {
		log.Fatalf("❌ Department seed failed: %v", err)
	}

	subjectMap, err := seedSubjects(ctx, client)
	if err != nil {
		log.Fatalf("❌ Subject seed failed: %v", err)
	}

	academicYearMap, err := seedAcademicYears(ctx, client)
	if err != nil {
		log.Fatalf("❌ Academic Year seed failed: %v", err)
	}

	// Wave 2 — depends on departments / subjects
	teacherUuidMap, userUuids, err := seedTeachers(ctx, client, deptMap, subjectMap)
	if err != nil {
		log.Fatalf("❌ Teacher seed failed: %v", err)
	}

	rollToUuid, err := seedStudents(ctx, client)
	if err != nil {
		log.Fatalf("❌ Student seed failed: %v", err)
	}

	err = seedEmployees(ctx, client)
	if err != nil {
		log.Fatalf("❌ Employee seed failed: %v", err)
	}

	// Wave 3 — depends on academic_years + departments
	classIdMap, nameToClassId, err := seedClasses(ctx, client, academicYearMap)
	if err != nil {
		log.Fatalf("❌ Class seed failed: %v", err)
	}
	_ = classIdMap // reserved for future use

	// Wave 4 — depends on users / classes
	err = seedTasks(ctx, client, userUuids)
	if err != nil {
		log.Fatalf("❌ Task seed failed: %v", err)
	}

	err = seedEvents(ctx, client)
	if err != nil {
		log.Fatalf("❌ Event seed failed: %v", err)
	}

	err = seedTeacherAttendance(ctx, client, teacherUuidMap)
	if err != nil {
		log.Fatalf("❌ Teacher Attendance seed failed: %v", err)
	}

	err = seedStudentAttendance(ctx, client, rollToUuid, nameToClassId, subjectMap)
	if err != nil {
		log.Fatalf("❌ Student Attendance seed failed: %v", err)
	}

	// Wave 5 — depends on classes + academic_years
	feeLabelToId, err := seedFeeStructures(ctx, client, academicYearMap)
	if err != nil {
		log.Fatalf("❌ Fee Structure seed failed: %v", err)
	}

	// Wave 6 — depends on students + fee_structures
	err = seedFeePayments(ctx, client, rollToUuid, feeLabelToId)
	if err != nil {
		log.Fatalf("❌ Fee Payment seed failed: %v", err)
	}

	// Wave 7 — depends on classes + subjects + academic_years
	err = seedExams(ctx, client, subjectMap, academicYearMap)
	if err != nil {
		log.Fatalf("❌ Exam seed failed: %v", err)
	}

	fmt.Println("\n✅ Seed complete!\n")
}

// ─── helpers ──────────────────────────────────────────────────────────────────

func getEnv(key, fallback string) string {
	if value, ok := os.LookupEnv(key); ok {
		return value
	}
	return fallback
}

func loadJson(filename string, target interface{}) error {
	filePath := filepath.Join(dataDir, filename)
	fileBytes, err := os.ReadFile(filePath)
	if err != nil {
		return fmt.Errorf("read file %s error: %w", filename, err)
	}
	return json.Unmarshal(fileBytes, target)
}

// "John Deo" → { first: "John", last: "Deo" }
func splitName(fullName string) (first string, last string) {
	fullName = strings.TrimSpace(fullName)
	parts := regexp.MustCompile(`\s+`).Split(fullName, -1)
	if len(parts) == 0 {
		return "Unknown", "Unknown"
	}
	first = parts[0]
	if first == "" {
		first = "Unknown"
	}
	if len(parts) > 1 {
		last = strings.Join(parts[1:], " ")
	} else {
		last = "Unknown"
	}
	return first, last
}

// "male" | "Male" → male, female, other
func toGender(raw string) string {
	v := strings.ToLower(strings.TrimSpace(raw))
	if v == "female" {
		return "female"
	}
	if v == "male" {
		return "male"
	}
	return "other"
}

// Safely parse a date string — returns nil on empty
func toDate(raw string) *time.Time {
	raw = strings.TrimSpace(raw)
	if raw == "" {
		return nil
	}
	// Try parsing standard formats: RFC3339, or simple dates
	formats := []string{
		time.RFC3339,
		"2006-01-02T15:04:05.000Z",
		"2006-01-02T15:04:05Z",
		"2006-01-02",
		"02-01-2006",
	}
	for _, fmtStr := range formats {
		if t, err := time.Parse(fmtStr, raw); err == nil {
			return &t
		}
	}
	return nil
}

// Parse money: "$2,574" → 2574
func parseMoney(raw interface{}) float64 {
	if raw == nil {
		return 0
	}
	switch v := raw.(type) {
	case float64:
		return v
	case int:
		return float64(v)
	case string:
		// Strip currency signs, spaces, commas
		cleaned := strings.NewReplacer("$", "", ",", "", " ", "").Replace(v)
		if f, err := strconv.ParseFloat(cleaned, 64); err == nil {
			return f
		}
	}
	return 0
}

// Slug-safe username from name + index
func makeUsername(name string, index int) string {
	reg := regexp.MustCompile(`[^a-z0-9]`)
	cleaned := reg.ReplaceAllString(strings.ToLower(name), "_")
	regMultiUnderscore := regexp.MustCompile(`_+`)
	cleaned = regMultiUnderscore.ReplaceAllString(cleaned, "_")
	if len(cleaned) > 60 {
		cleaned = cleaned[:60]
	}
	return fmt.Sprintf("%s_%d", cleaned, index)
}

// Default hashed password for all seeded users
func defaultHash() (string, error) {
	bytes, err := bcrypt.GenerateFromPassword([]byte("Admin@1234"), 10)
	if err != nil {
		return "", err
	}
	return string(bytes), nil
}
