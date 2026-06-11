package schema

import (
	"time"

	"entgo.io/ent"
	"entgo.io/ent/schema/edge"
	"entgo.io/ent/schema/field"
	"github.com/google/uuid"
)

// Student holds the schema definition for the Student entity.
type Student struct {
	ent.Schema
}

// Fields of the Student.
func (Student) Fields() []ent.Field {
	return []ent.Field{
		field.UUID("id", uuid.UUID{}).
			Default(uuid.New),
		field.UUID("user_id", uuid.UUID{}).
			Optional().
			Nillable().
			Unique(),
		field.String("roll_number").
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
		field.String("parent_phone").
			Optional().
			Nillable(),
		field.String("address").
			Optional().
			Nillable(),
		field.UUID("class_id", uuid.UUID{}).
			Optional().
			Nillable(),
		field.Time("joining_date").
			Default(time.Now),
		field.String("avatar_url").
			Optional().
			Nillable(),
	}
}

// Edges of the Student.
func (Student) Edges() []ent.Edge {
	return []ent.Edge{
		edge.To("user", User.Type).
			Unique().
			Field("user_id"),
		edge.To("class", Class.Type).
			Unique().
			Field("class_id"),
	}
}
