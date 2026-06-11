package schema

import (
	"entgo.io/ent"
	"entgo.io/ent/schema/edge"
	"entgo.io/ent/schema/field"
	"entgo.io/ent/schema/index"
)

// Class holds the schema definition for the Class entity.
type Class struct {
	ent.Schema
}

// Fields of the Class.
func (Class) Fields() []ent.Field {
	return []ent.Field{
		field.String("name"),
		field.Int("academic_year_id"),
		field.Int("department_id").
			Optional().
			Nillable(),
		field.Int("capacity").
			Optional().
			Nillable(),
	}
}

// Edges of the Class.
func (Class) Edges() []ent.Edge {
	return []ent.Edge{
		edge.To("academic_year", AcademicYear.Type).
			Unique().
			Field("academic_year_id").
			Required(),
		edge.To("department", Department.Type).
			Unique().
			Field("department_id"),
	}
}

// Indexes of the Class.
func (Class) Indexes() []ent.Index {
	return []ent.Index{
		index.Fields("name", "academic_year_id").Unique(),
	}
}
