package schema

import (
	"entgo.io/ent"
	"entgo.io/ent/schema/field"
	"github.com/google/uuid"
)

// Department holds the schema definition for the Department entity.
type Department struct {
	ent.Schema
}

// Fields of the Department.
func (Department) Fields() []ent.Field {
	return []ent.Field{
		field.UUID("id", uuid.UUID{}).
			Default(uuid.New),
		field.String("name").
			Unique(),
		field.String("code").
			Optional().
			Nillable(),
		field.String("description").
			Optional().
			Nillable(),
	}
}

// Edges of the Department.
func (Department) Edges() []ent.Edge {
	return nil
}
