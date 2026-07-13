-- Migration for teacher_study_materials table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.teacher_study_materials (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "class" TEXT,
    "subject" TEXT,
    "title" TEXT,
    "type" TEXT,
    "upload_date" TIMESTAMP,
    "file_url" TEXT
);

INSERT INTO public.teacher_study_materials ("id", "class", "subject", "title", "type", "upload_date", "file_url") VALUES
('95000000-0000-0000-0000-000000000001', '10A', 'Mathematics', 'Algebra Notes', 'PDF', '2025-12-26 00:00:00', 'link') ON CONFLICT DO NOTHING;

INSERT INTO public.teacher_study_materials ("id", "class", "subject", "title", "type", "upload_date", "file_url") VALUES
('95000000-0000-0000-0000-000000000002', '11B', 'Physics', 'Newtonian Mechanics', 'Video', '2025-12-26 00:00:00', 'link') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
