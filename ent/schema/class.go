package schema

import (
	"entgo.io/ent/schema"
	"entgo.io/contrib/entgql"
	"entgo.io/ent"
	"entgo.io/ent/schema/edge"
	"entgo.io/ent/schema/field"
	"entgo.io/ent/schema/index"
	"github.com/google/uuid"
)

// Class holds the schema definition for the Class entity.
type Class struct {
	ent.Schema
}

// Fields of the Class.
func (Class) Fields() []ent.Field {
	return []ent.Field{
		field.UUID("id", uuid.UUID{}).
			Default(uuid.New),
		field.String("name"),
		field.UUID("academic_year_id", uuid.UUID{}),
		field.UUID("department_id", uuid.UUID{}).
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

// Annotations of the Class.
func (Class) Annotations() []schema.Annotation {
	return []schema.Annotation{
		entgql.QueryField(),
		entgql.Mutations(entgql.MutationCreate(), entgql.MutationUpdate()),
	}
}
