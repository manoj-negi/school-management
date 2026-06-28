package graph

// This file will not be regenerated automatically.
//
// It serves as dependency injection for your app, add any dependencies you require
// here.

import (
	"context"
	"database/sql"
	"fmt"
	"strings"
	"time"

	"github.com/google/uuid"
	"go-seed/ent"
)

type Resolver struct {
	Client *ent.Client
	DB     *sql.DB
}

func formatNullTime(nt sql.NullTime) string {
	if !nt.Valid {
		return ""
	}
	return nt.Time.Format("2006-01-02")
}

func formatNullTimePtr(nt sql.NullTime) *string {
	if !nt.Valid {
		return nil
	}
	s := nt.Time.Format("2006-01-02")
	return &s
}

func formatTimestamp(nt sql.NullTime) string {
	if !nt.Valid {
		return ""
	}
	return nt.Time.Format("2006-01-02T15:04:05Z")
}

func parseDateString(s *string) sql.NullTime {
	if s == nil || *s == "" {
		return sql.NullTime{}
	}
	val := *s
	if idx := strings.Index(val, "T"); idx != -1 {
		val = val[:idx]
	} else if idx := strings.Index(val, " "); idx != -1 {
		val = val[:idx]
	}
	t, err := time.Parse("2006-01-02", val)
	if err != nil {
		return sql.NullTime{}
	}
	return sql.NullTime{Time: t, Valid: true}
}

func parseRequiredDateString(s string) sql.NullTime {
	val := s
	if idx := strings.Index(val, "T"); idx != -1 {
		val = val[:idx]
	} else if idx := strings.Index(val, " "); idx != -1 {
		val = val[:idx]
	}
	t, err := time.Parse("2006-01-02", val)
	if err != nil {
		return sql.NullTime{}
	}
	return sql.NullTime{Time: t, Valid: true}
}

func parseUUID(s *string) (sql.NullString, error) {
	if s == nil || *s == "" {
		return sql.NullString{}, nil
	}
	_, err := uuid.Parse(*s)
	if err != nil {
		return sql.NullString{}, err
	}
	return sql.NullString{String: *s, Valid: true}, nil
}

func parseNullString(s *string) sql.NullString {
	if s == nil {
		return sql.NullString{}
	}
	return sql.NullString{String: *s, Valid: true}
}

func parseTimestampString(s *string) sql.NullTime {
	if s == nil || *s == "" {
		return sql.NullTime{}
	}
	t, err := time.Parse(time.RFC3339, *s)
	if err != nil {
		t, err = time.Parse("2006-01-02T15:04:05Z", *s)
		if err != nil {
			t, err = time.Parse("2006-01-02 15:04:05", *s)
			if err != nil {
				return parseDateString(s)
			}
		}
	}
	return sql.NullTime{Time: t, Valid: true}
}


func resolveAssignedTo(ctx context.Context, db *sql.DB, s *string) (sql.NullString, error) {
	if s == nil || *s == "" {
		return sql.NullString{}, nil
	}
	val := *s

	// First, check if it's a valid UUID
	_, err := uuid.Parse(val)
	if err == nil {
		return sql.NullString{String: val, Valid: true}, nil
	}

	// If not a valid UUID, search by username in the users table
	var userID string
	err = db.QueryRowContext(ctx, "SELECT id FROM users WHERE LOWER(username) = LOWER($1)", val).Scan(&userID)
	if err == nil {
		return sql.NullString{String: userID, Valid: true}, nil
	}

	// Return a clean user-friendly error
	return sql.NullString{}, fmt.Errorf("assignedTo must be a valid UUID or username: user %q not found", val)
}

func derefString(s *string) string {
	if s == nil {
		return ""
	}
	return *s
}

func derefInt(i *int) int {
	if i == nil {
		return 0
	}
	return *i
}

func derefBool(b *bool) bool {
	if b == nil {
		return false
	}
	return *b
}


func parseUUIDString(s string) (sql.NullString, error) {
	if s == "" {
		return sql.NullString{}, nil
	}
	_, err := uuid.Parse(s)
	if err != nil {
		return sql.NullString{}, fmt.Errorf("invalid UUID %q: %w", s, err)
	}
	return sql.NullString{String: s, Valid: true}, nil
}

func resolveTeacherID(ctx context.Context, db *sql.DB, teacherID string, teacherName string) (sql.NullString, error) {
	if teacherID == "" {
		return autoGenerateTeacher(ctx, db, teacherName)
	}

	_, err := uuid.Parse(teacherID)
	if err == nil {
		return sql.NullString{String: teacherID, Valid: true}, nil
	}

	// Not a valid UUID - search by teacher name
	var existingID string
	err = db.QueryRowContext(ctx, "SELECT id FROM public.teachers WHERE LOWER(name) = LOWER($1)", teacherName).Scan(&existingID)
	if err == nil {
		return sql.NullString{String: existingID, Valid: true}, nil
	}

	return autoGenerateTeacher(ctx, db, teacherName)
}

func autoGenerateTeacher(ctx context.Context, db *sql.DB, teacherName string) (sql.NullString, error) {
	newID := uuid.New().String()
	_, err := db.ExecContext(ctx, `
		INSERT INTO public.teachers (
			id, name, gender, email, department, mobile, degree, address, hire_date, salary, subject_specialization, experience_years, status, birthdate
		) VALUES ($1, $2, 'male', $3, 'science', '1234567890', 'B.Sc', 'Address', NOW(), '0', 'General', 0, 'active', NOW())
	`, newID, teacherName, strings.ToLower(strings.ReplaceAll(teacherName, " ", "."))+"@school.com")
	if err != nil {
		fmt.Printf("Warning: failed to auto-insert teacher %q: %v\n", teacherName, err)
	}
	return sql.NullString{String: newID, Valid: true}, nil
}


