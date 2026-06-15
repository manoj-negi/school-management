package main

import (
	"context"
	"database/sql"
	"encoding/json"
	"flag"
	"fmt"
	"log"
	"os"
	"path/filepath"
	"regexp"
	"sort"
	"strconv"
	"strings"
	"time"

	"go-seed/ent"

	_ "github.com/lib/pq"
	"golang.org/x/crypto/bcrypt"
)

var (
	dataDir    string
	dbURL      string
	serverMode bool
)

func init() {
	flag.StringVar(&dataDir, "data-dir", "", "Path to the directory containing JSON data files")
	flag.StringVar(&dbURL, "db-url", "", "PostgreSQL Connection URI (e.g. postgres://user:pass@host:port/db?sslmode=disable)")
	flag.BoolVar(&serverMode, "server", false, "Start the API web server")
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

func runSQLMigrations(dbURL string) error {
	db, err := sql.Open("postgres", dbURL)
	if err != nil {
		return fmt.Errorf("failed to open database connection: %w", err)
	}
	defer db.Close()

	files, err := filepath.Glob("migration/migrations/*.sql")
	if err != nil {
		return fmt.Errorf("failed to find migration files: %w", err)
	}
	if len(files) == 0 {
		return fmt.Errorf("no migration files found in migration/migrations/")
	}
	sort.Strings(files)

	for _, file := range files {
		fmt.Printf("Applying %s...\n", filepath.Base(file))
		content, err := os.ReadFile(file)
		if err != nil {
			return fmt.Errorf("failed to read file %s: %w", file, err)
		}
		_, err = db.Exec(string(content))
		if err != nil {
			return fmt.Errorf("failed to execute %s: %w", file, err)
		}
	}
	return nil
}

func main() {
	flag.Parse()

	// Load local .env files if present
	loadEnv(".env")
	loadEnv("../.env")

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

	if serverMode {
		startServer(ctx, client)
		return
	}

	// Run SQL migrations and seed tables
	fmt.Println("🏗️ Applying SQL migrations from migration/migrations...")
	if err := runSQLMigrations(dbURL); err != nil {
		log.Fatalf("❌ SQL migrations failed: %v", err)
	}
	fmt.Println("✅ SQL migrations applied and database seeded successfully!")
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
