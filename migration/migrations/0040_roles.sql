SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.roles (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR(100) UNIQUE NOT NULL,
    description TEXT
);
INSERT INTO public.roles ("id", "name", "description") VALUES ('f0bacca8-7a6a-3ec5-9a29-bf5612958ca5', 'admin', 'Administrator role') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.roles ("id", "name", "description") VALUES ('ab8589e5-0df0-3752-96a9-cb54c32de7b3', 'student', 'Student role') ON CONFLICT (name) DO NOTHING;
INSERT INTO public.roles ("id", "name", "description") VALUES ('11d862c0-63db-3c73-a10c-2e62a402ebc1', 'teacher', 'Teacher role') ON CONFLICT (name) DO NOTHING;
SET session_replication_role = 'origin';
