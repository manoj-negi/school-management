package schema

import (
	"entgo.io/ent"
	"entgo.io/ent/schema/edge"
	"entgo.io/ent/schema/field"
	"entgo.io/ent/schema/index"
	"github.com/google/uuid"
)

// Employee holds the schema definition for the Employee entity.
type Employee struct {
	ent.Schema
}

// Fields of the Employee.
func (Employee) Fields() []ent.Field {
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
		field.UUID("department_id", uuid.UUID{}).
			Optional().
			Nillable(),
		field.String("job_title").
			Optional().
			Nillable(),
		field.Time("joining_date").
			Optional().
			Nillable(),
		field.Float("salary").
			Optional().
			Nillable(),
		field.String("avatar_url").
			Optional().
			Nillable(),
		field.Bool("is_active").
			Default(true),
	}
}

// Edges of the Employee.
func (Employee) Edges() []ent.Edge {
	return []ent.Edge{
		edge.To("user", User.Type).
			Unique().
			Field("user_id").
			Required(),
		edge.To("department", Department.Type).
			Unique().
			Field("department_id"),
	}
}

// Indexes of the Employee.
func (Employee) Indexes() []ent.Index {
	return []ent.Index{
		index.Fields("user_id").Unique(),
	}
}
