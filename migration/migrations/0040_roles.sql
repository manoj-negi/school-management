
SET session_replication_role = 'replica';

CREATE TABLE IF NOT EXISTS public.roles (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL,
    description TEXT
);

INSERT INTO public.roles (name, description) VALUES ('admin', 'Administrator role') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.roles (name, description) VALUES ('student', 'Student role') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.roles (name, description) VALUES ('teacher', 'Teacher role') ON CONFLICT (name) DO NOTHING;

SET session_replication_role = 'origin';