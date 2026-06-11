package schema

import (
	"entgo.io/ent"
	"entgo.io/ent/schema/edge"
	"entgo.io/ent/schema/field"
	"entgo.io/ent/schema/index"
	"github.com/google/uuid"
)

// TeacherAttendance holds the schema definition for the TeacherAttendance entity.
type TeacherAttendance struct {
	ent.Schema
}

// Fields of the TeacherAttendance.
func (TeacherAttendance) Fields() []ent.Field {
	return []ent.Field{
		field.UUID("id", uuid.UUID{}).
			Default(uuid.New),
		field.UUID("teacher_id", uuid.UUID{}),
		field.Time("date"),
		field.Enum("status").
			Values("present", "absent", "late", "excused").
			Default("present"),
		field.String("remarks").
			Optional().
			Nillable(),
	}
}

// Edges of the TeacherAttendance.
func (TeacherAttendance) Edges() []ent.Edge {
	return []ent.Edge{
		edge.To("teacher", Teacher.Type).
			Unique().
			Field("teacher_id").
			Required(),
	}
}

// Indexes of the TeacherAttendance.
func (TeacherAttendance) Indexes() []ent.Index {
	return []ent.Index{
		index.Fields("teacher_id", "date").Unique(),
	}
}
