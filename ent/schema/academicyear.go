package schema

import (
	"entgo.io/ent"
	"entgo.io/ent/schema/field"
	"github.com/google/uuid"
)

// AcademicYear holds the schema definition for the AcademicYear entity.
type AcademicYear struct {
	ent.Schema
}

// Fields of the AcademicYear.
func (AcademicYear) Fields() []ent.Field {
	return []ent.Field{
		field.UUID("id", uuid.UUID{}).
			Default(uuid.New),
		field.String("label").
			Unique(),
		field.Time("start_date"),
		field.Time("end_date"),
		field.Bool("is_current").
			Default(false),
	}
}

// Edges of the AcademicYear.
func (AcademicYear) Edges() []ent.Edge {
	return nil
}
