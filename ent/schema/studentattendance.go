package schema

import (
	"entgo.io/ent/schema"
	"entgo.io/contrib/entgql"
	"entgo.io/ent"
	"entgo.io/ent/schema/edge"
	"entgo.io/ent/schema/field"
	"entgo.io/ent/schema/index"
	"github.com/google/uuid"
)

// StudentAttendance holds the schema definition for the StudentAttendance entity.
type StudentAttendance struct {
	ent.Schema
}

// Fields of the StudentAttendance.
func (StudentAttendance) Fields() []ent.Field {
	return []ent.Field{
		field.UUID("id", uuid.UUID{}).
			Default(uuid.New),
		field.UUID("student_id", uuid.UUID{}),
		field.UUID("class_id", uuid.UUID{}),
		field.UUID("subject_id", uuid.UUID{}).
			Optional().
			Nillable(),
		field.Time("date"),
		field.Enum("status").
			Values("present", "absent", "late", "excused").
			Default("present"),
		field.String("remarks").
			Optional().
			Nillable(),
	}
}

// Edges of the StudentAttendance.
func (StudentAttendance) Edges() []ent.Edge {
	return []ent.Edge{
		edge.To("student", Student.Type).
			Unique().
			Field("student_id").
			Required(),
		edge.To("class", Class.Type).
			Unique().
			Field("class_id").
			Required(),
		edge.To("subject", Subject.Type).
			Unique().
			Field("subject_id"),
	}
}

// Indexes of the StudentAttendance.
func (StudentAttendance) Indexes() []ent.Index {
	return []ent.Index{
		index.Fields("student_id", "subject_id", "date").Unique(),
	}
}

// Annotations of the StudentAttendance.
func (StudentAttendance) Annotations() []schema.Annotation {
	return []schema.Annotation{
		entgql.QueryField(),
		entgql.Mutations(entgql.MutationCreate(), entgql.MutationUpdate()),
	}
}
