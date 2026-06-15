package main

import (
	"context"
	"flag"
	"fmt"
	"log"
	"os"

	"go-seed/ent"

	_ "github.com/lib/pq"
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
	lines := stringsSplit(string(bytes), "\n")
	for _, line := range lines {
		line = trimSpace(line)
		if line == "" || hasPrefix(line, "#") {
			continue
		}
		parts := stringsSplitN(line, "=", 2)
		if len(parts) != 2 {
			continue
		}
		key := trimSpace(parts[0])
		val := trimSpace(parts[1])
		if (hasPrefix(val, "\"") && hasSuffix(val, "\"")) ||
			(hasPrefix(val, "'") && hasSuffix(val, "'")) {
			val = val[1 : len(val)-1]
		}
		if os.Getenv(key) == "" {
			os.Setenv(key, val)
		}
	}
}

// Inline helper functions for loadEnv to avoid importing strings package
func stringsSplit(s, sep string) []string {
	var result []string
	for {
		i := stringsIndex(s, sep)
		if i < 0 {
			result = append(result, s)
			break
		}
		result = append(result, s[:i])
		s = s[i+len(sep):]
	}
	return result
}
func stringsSplitN(s, sep string, n int) []string {
	if n == 2 {
		i := stringsIndex(s, sep)
		if i < 0 {
			return []string{s}
		}
		return []string{s[:i], s[i+len(sep):]}
	}
	return stringsSplit(s, sep)
}
func stringsIndex(s, substr string) int {
	n := len(substr)
	if n == 0 {
		return 0
	}
	for i := 0; i <= len(s)-n; i++ {
		if s[i:i+n] == substr {
			return i
		}
	}
	return -1
}
func trimSpace(s string) string {
	start := 0
	for start < len(s) && (s[start] == ' ' || s[start] == '\t' || s[start] == '\r' || s[start] == '\n') {
		start++
	}
	end := len(s)
	for end > start && (s[end-1] == ' ' || s[end-1] == '\t' || s[end-1] == '\r' || s[end-1] == '\n') {
		end--
	}
	return s[start:end]
}
func hasPrefix(s, prefix string) bool {
	return len(s) >= len(prefix) && s[:len(prefix)] == prefix
}
func hasSuffix(s, suffix string) bool {
	return len(s) >= len(suffix) && s[len(s)-len(suffix):] == suffix
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
