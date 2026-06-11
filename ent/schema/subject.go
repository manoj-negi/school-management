package schema

import (
	"entgo.io/ent"
	"entgo.io/ent/schema/edge"
	"entgo.io/ent/schema/field"
	"github.com/google/uuid"
)

// Subject holds the schema definition for the Subject entity.
type Subject struct {
	ent.Schema
}

// Fields of the Subject.
func (Subject) Fields() []ent.Field {
	return []ent.Field{
		field.UUID("id", uuid.UUID{}).
			Default(uuid.New),
		field.String("name"),
		field.String("code").
			Optional().
			Nillable().
			Unique(),
		field.String("description").
			Optional().
			Nillable(),
	}
}

// Edges of the Subject.
func (Subject) Edges() []ent.Edge {
	return []ent.Edge{
		edge.From("teachers", Teacher.Type).
			Ref("subjects"),
	}
}
