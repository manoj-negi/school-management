package schema

import (
	"entgo.io/ent"
	"entgo.io/ent/schema/edge"
	"entgo.io/ent/schema/field"
)

// Exam holds the schema definition for the Exam entity.
type Exam struct {
	ent.Schema
}

// Fields of the Exam.
func (Exam) Fields() []ent.Field {
	return []ent.Field{
		field.String("title"),
		field.Int("class_id").
			Optional().
			Nillable(),
		field.Int("subject_id").
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
		field.Int("academic_year_id").
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
