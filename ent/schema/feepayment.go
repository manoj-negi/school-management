package schema

import (
	"entgo.io/ent"
	"entgo.io/ent/schema/edge"
	"entgo.io/ent/schema/field"
	"github.com/google/uuid"
)

// FeePayment holds the schema definition for the FeePayment entity.
type FeePayment struct {
	ent.Schema
}

// Fields of the FeePayment.
func (FeePayment) Fields() []ent.Field {
	return []ent.Field{
		field.UUID("student_id", uuid.UUID{}),
		field.Int("fee_structure_id"),
		field.Float("amount_paid"),
		field.Time("payment_date"),
		field.Enum("payment_status").
			Values("unpaid", "partial", "paid", "overdue").
			Default("unpaid"),
		field.String("payment_method").
			Optional().
			Nillable(),
		field.String("transaction_ref").
			Optional().
			Nillable(),
		field.String("remarks").
			Optional().
			Nillable(),
	}
}

// Edges of the FeePayment.
func (FeePayment) Edges() []ent.Edge {
	return []ent.Edge{
		edge.To("student", Student.Type).
			Unique().
			Field("student_id").
			Required(),
		edge.To("fee_structure", FeeStructure.Type).
			Unique().
			Field("fee_structure_id").
			Required(),
	}
}
