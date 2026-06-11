-- Migration to seed admin, teacher, and student users

SET session_replication_role = 'replica';
INSERT INTO public.users (id, username, email, password_hash, role, role_id, is_active) VALUES ('55fc18ac-07a3-3f52-9b4b-8d4ade002472', 'admin', 'admin@school.dev', '$2b$10$qaAiCnN6dLlastZy63MpROeXCH239YFhrSMK80YpVhBjP9j4RkXlO', 'admin', 'f0bacca8-7a6a-3ec5-9a29-bf5612958ca5', true) ON CONFLICT (username) DO NOTHING;
INSERT INTO public.users (id, username, email, password_hash, role, role_id, is_active) VALUES ('da7f152d-944a-471a-96e0-811ebc210512', 'teacher', 'teacher@school.dev', '$2b$10$EiZtEg0CIukVC2FnUbGy3.deRLxR7iPY14rgMAnf5DU941dVE9AwW', 'teacher', '11d862c0-63db-3c73-a10c-2e62a402ebc1', true) ON CONFLICT (username) DO NOTHING;
INSERT INTO public.users (id, username, email, password_hash, role, role_id, is_active) VALUES ('da7f152d-944a-471a-96e0-811ebc210513', 'student', 'student@school.dev', '$2b$10$3jNgSJwPiMfBptAvGnKqsOr3MNmW50lFtLySRgu7fNyjl3TvaksJu', 'student', 'ab8589e5-0df0-3752-96a9-cb54c32de7b3', true) ON CONFLICT (username) DO NOTHING;
SET session_replication_role = 'origin';
