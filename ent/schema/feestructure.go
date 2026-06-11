package schema

import (
	"entgo.io/ent"
	"entgo.io/ent/schema/edge"
	"entgo.io/ent/schema/field"
	"entgo.io/ent/schema/index"
)

// FeeStructure holds the schema definition for the FeeStructure entity.
type FeeStructure struct {
	ent.Schema
}

// Fields of the FeeStructure.
func (FeeStructure) Fields() []ent.Field {
	return []ent.Field{
		field.Int("class_id"),
		field.Int("academic_year_id"),
		field.String("fee_label"),
		field.Float("amount"),
		field.Time("due_date").
			Optional().
			Nillable(),
	}
}

// Edges of the FeeStructure.
func (FeeStructure) Edges() []ent.Edge {
	return []ent.Edge{
		edge.To("class", Class.Type).
			Unique().
			Field("class_id").
			Required(),
		edge.To("academic_year", AcademicYear.Type).
			Unique().
			Field("academic_year_id").
			Required(),
	}
}

// Indexes of the FeeStructure.
func (FeeStructure) Indexes() []ent.Index {
	return []ent.Index{
		index.Fields("class_id", "academic_year_id", "fee_label").Unique(),
	}
}
