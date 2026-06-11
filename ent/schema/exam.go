package schema

import (
	"entgo.io/ent"
	"entgo.io/ent/schema/edge"
	"entgo.io/ent/schema/field"
	"github.com/google/uuid"
)

// Exam holds the schema definition for the Exam entity.
type Exam struct {
	ent.Schema
}

// Fields of the Exam.
func (Exam) Fields() []ent.Field {
	return []ent.Field{
		field.UUID("id", uuid.UUID{}).
			Default(uuid.New),
		field.String("title"),
		field.UUID("class_id", uuid.UUID{}).
			Optional().
			Nillable(),
		field.UUID("subject_id", uuid.UUID{}).
			Optional().
			Nillable(),
		field.String("exam_type").
			Optional().
			Nillable(),
		field.Time("start_date"),
		field.Time("end_date"),
		field.Float("max_marks").
			Default(100.0),
		field.Float("pass_marks").
			Default(35.0),
		field.UUID("academic_year_id", uuid.UUID{}).
			Optional().
			Nillable(),
	}
}

// Edges of the Exam.
func (Exam) Edges() []ent.Edge {
	return []ent.Edge{
		edge.To("class", Class.Type).
			Unique().
			Field("class_id"),
		edge.To("subject", Subject.Type).
			Unique().
			Field("subject_id"),
		edge.To("academic_year", AcademicYear.Type).
			Unique().
			Field("academic_year_id"),
	}
}
