-- Migration for teacher_lesson_plans table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.teacher_lesson_plans (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "class" TEXT,
    "subject" TEXT,
    "topic" TEXT,
    "date" TIMESTAMP,
    "status" TEXT,
    "lesson_details" TEXT
);

INSERT INTO public.teacher_lesson_plans ("id", "class", "subject", "topic", "date", "status", "lesson_details") VALUES
('93000000-0000-0000-0000-000000000001', '10A', 'Mathematics', 'Algebraic Expressions', '2025-12-26 00:00:00', 'Planned', 'Intro to variables') ON CONFLICT DO NOTHING;

INSERT INTO public.teacher_lesson_plans ("id", "class", "subject", "topic", "date", "status", "lesson_details") VALUES
('93000000-0000-0000-0000-000000000002', '11B', 'Physics', 'Thermodynamics', '2025-12-26 00:00:00', 'In Progress', 'Laws of thermodynamics') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
