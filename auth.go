package main

import (
	"context"
	"fmt"
	"log"
	"net/http"
	"os"

	"go-seed/ent"
	"go-seed/graph"

	"github.com/99designs/gqlgen/graphql/handler"
	"github.com/99designs/gqlgen/graphql/playground"
)

func startServer(ctx context.Context, client *ent.Client) {
	// Setup mux
	mux := http.NewServeMux()

	// Login Endpoint
	mux.HandleFunc("/api/login", client.LoginHandler(ctx))

	// GraphQL Server Setup
	resolver := &graph.Resolver{
		Client: client,
	}
	srv := handler.NewDefaultServer(graph.NewExecutableSchema(graph.Config{
		Resolvers: resolver,
	}))

	// GraphQL Endpoints
	mux.Handle("/query", srv)
	mux.Handle("/", playground.Handler("GraphQL Playground", "/query"))

	// Wrap in CORS middleware
	handler := corsMiddleware(mux)

	port := os.Getenv("PORT")
	if port == "" {
		port = "8080"
	}

	fmt.Printf("🚀 Server starting on http://localhost:%s\n", port)
	if err := http.ListenAndServe(":"+port, handler); err != nil {
		log.Fatalf("❌ Server failed to start: %v", err)
	}
}

func corsMiddleware(next http.Handler) http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		w.Header().Set("Access-Control-Allow-Origin", "*")
		w.Header().Set("Access-Control-Allow-Methods", "POST, GET, OPTIONS, PUT, DELETE")
		w.Header().Set("Access-Control-Allow-Headers", "Accept, Content-Type, Content-Length, Accept-Encoding, X-CSRF-Token, Authorization")
		if r.Method == "OPTIONS" {
			w.WriteHeader(http.StatusOK)
			return
		}
		next.ServeHTTP(w, r)
	})
}
