package graph

// This file will not be regenerated automatically.
//
// It serves as dependency injection for your app, add any dependencies you require
// here.

import (
	"database/sql"
	"strings"
	"time"

	"github.com/google/uuid"
	"go-seed/ent"
)

type Resolver struct {
	Client *ent.Client
}

func formatNullTime(nt sql.NullTime) string {
	if !nt.Valid {
		return ""
	}
	return nt.Time.Format("2006-01-02")
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
