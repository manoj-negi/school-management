package schema

import (
	"entgo.io/ent/schema"
	"entgo.io/contrib/entgql"
	"time"

	"entgo.io/ent"
	"entgo.io/ent/schema/edge"
	"entgo.io/ent/schema/field"
	"github.com/google/uuid"
)

// User holds the schema definition for the User entity.
type User struct {
	ent.Schema
}

// Fields of the User.
func (User) Fields() []ent.Field {
	return []ent.Field{
		field.UUID("id", uuid.UUID{}).
			Default(uuid.New),
		field.String("username").
			Unique(),
		field.String("email").
			Unique(),
		field.String("password_hash").
			Annotations(
				entgql.Skip(),
			),
		field.Enum("role").
			Values("admin", "teacher", "student", "employee", "doctor", "staff").
			Default("student"),
		field.UUID("role_id", uuid.UUID{}).
			Optional().
			Nillable(),
		field.String("avatar_url").
			Optional().
			Nillable(),
		field.Bool("is_active").
			Default(true),
		field.Time("created_at").
			Default(time.Now),
		field.Time("updated_at").
			Default(time.Now).
			UpdateDefault(time.Now),
	}
}

// Edges of the User.
func (User) Edges() []ent.Edge {
	return []ent.Edge{
		edge.To("role_ref", Role.Type).
			Unique().
			Field("role_id"),
	}
}

// Annotations of the User.
func (User) Annotations() []schema.Annotation {
	return []schema.Annotation{
		entgql.QueryField(),
		entgql.Mutations(entgql.MutationCreate(), entgql.MutationUpdate()),
	}
}
