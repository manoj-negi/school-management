package schema

import (
	"entgo.io/ent"
	"entgo.io/ent/schema/edge"
	"entgo.io/ent/schema/field"
	"github.com/google/uuid"
)

// Task holds the schema definition for the Task entity.
type Task struct {
	ent.Schema
}

// Fields of the Task.
func (Task) Fields() []ent.Field {
	return []ent.Field{
		field.UUID("id", uuid.UUID{}).
			Default(uuid.New),
		field.String("title"),
		field.String("details").
			Optional().
			Nillable(),
		field.UUID("assigned_to", uuid.UUID{}).
			Optional().
			Nillable(),
		field.UUID("assigned_by", uuid.UUID{}).
			Optional().
			Nillable(),
		field.Enum("status").
			Values("Pending", "In_Progress", "Completed", "Cancelled").
			Default("Pending"),
		field.Enum("priority").
			Values("Low", "Normal", "High").
			Default("Normal"),
		field.Int("progress_pct").
			Default(0),
		field.Time("due_date").
			Optional().
			Nillable(),
	}
}

// Edges of the Task.
func (Task) Edges() []ent.Edge {
	return []ent.Edge{
		edge.To("assignee", User.Type).
			Unique().
			Field("assigned_to"),
		edge.To("assigner", User.Type).
			Unique().
			Field("assigned_by"),
	}
}
