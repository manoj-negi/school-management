-- Migration for student_syllabuses table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.student_syllabuses (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "subject" TEXT,
    "class" TEXT,
    "title" TEXT,
    "type" TEXT,
    "date" TEXT,
    "download_url" TEXT
);

INSERT INTO public.student_syllabuses ("id", "subject", "class", "title", "type", "date", "download_url") VALUES
('9e600000-0000-0000-0000-000000000001', 'Mathematics', 'Grade 10', 'Calculus & Algebra', 'PDF', '2025-12-01', '#') ON CONFLICT DO NOTHING;

INSERT INTO public.student_syllabuses ("id", "subject", "class", "title", "type", "date", "download_url") VALUES
('9e600000-0000-0000-0000-000000000002', 'Physics', 'Grade 10', 'Thermodynamics', 'DOC', '2025-12-02', '#') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
