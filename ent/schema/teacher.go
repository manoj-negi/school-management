package schema

import (
	"entgo.io/ent"
	"entgo.io/ent/schema/edge"
	"entgo.io/ent/schema/field"
	"entgo.io/ent/schema/index"
	"github.com/google/uuid"
)

// Teacher holds the schema definition for the Teacher entity.
type Teacher struct {
	ent.Schema
}

// Fields of the Teacher.
func (Teacher) Fields() []ent.Field {
	return []ent.Field{
		field.UUID("id", uuid.UUID{}).
			Default(uuid.New),
		field.UUID("user_id", uuid.UUID{}).
			Unique(),
		field.String("first_name"),
		field.String("last_name"),
		field.Enum("gender").
			Values("male", "female", "other").
			Optional().
			Nillable(),
		field.Time("date_of_birth").
			Optional().
			Nillable(),
		field.String("phone").
			Optional().
			Nillable(),
		field.String("address").
			Optional().
			Nillable(),
		field.Int("department_id").
			Optional().
			Nillable(),
		field.String("qualification").
			Optional().
			Nillable(),
		field.Time("joining_date").
			Optional().
			Nillable(),
		field.String("avatar_url").
			Optional().
			Nillable(),
	}
}

// Edges of the Teacher.
func (Teacher) Edges() []ent.Edge {
	return []ent.Edge{
		edge.To("user", User.Type).
			Unique().
			Field("user_id").
			Required(),
		edge.To("department", Department.Type).
			Unique().
			Field("department_id"),
		edge.To("subjects", Subject.Type),
	}
}

// Indexes of the Teacher.
func (Teacher) Indexes() []ent.Index {
	return []ent.Index{
		index.Fields("user_id").Unique(),
	}
}
