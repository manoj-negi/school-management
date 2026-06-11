package schema

import (
	"entgo.io/ent"
	"entgo.io/ent/schema/field"
)

// Event holds the schema definition for the Event entity.
type Event struct {
	ent.Schema
}

// Fields of the Event.
func (Event) Fields() []ent.Field {
	return []ent.Field{
		field.String("title"),
		field.Enum("event_type").
			Values("exam", "holiday", "meeting", "activity", "other").
			Default("other"),
		field.String("description").
			Optional().
			Nillable(),
		field.Time("event_date"),
		field.Bool("is_all_day").
			Default(false),
		field.String("status").
			Default("Upcoming"),
	}
}

// Edges of the Event.
func (Event) Edges() []ent.Edge {
	return nil
}
