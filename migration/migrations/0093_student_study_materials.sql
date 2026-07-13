-- Migration for student_study_materials table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.student_study_materials (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "title" TEXT,
    "subject" TEXT,
    "type" TEXT,
    "date" TIMESTAMP,
    "download_url" TEXT
);

INSERT INTO public.student_study_materials ("id", "title", "subject", "type", "date", "download_url") VALUES
('94000000-0000-0000-0000-000000000001', 'Algebra Notes', 'Mathematics', 'PDF', '2024-01-05 00:00:00', 'algebra.pdf') ON CONFLICT DO NOTHING;

INSERT INTO public.student_study_materials ("id", "title", "subject", "type", "date", "download_url") VALUES
('94000000-0000-0000-0000-000000000002', 'Quantum Mechanics Basics', 'Physics', 'Video', '2024-01-10 00:00:00', 'quantum.mp4') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
