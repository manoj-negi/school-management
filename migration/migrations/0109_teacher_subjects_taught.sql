-- Migration for teacher_subjects_taught table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.teacher_subjects_taught (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "subject_name" TEXT,
    "class" TEXT,
    "total_students" INTEGER
);

INSERT INTO public.teacher_subjects_taught ("id", "subject_name", "class", "total_students") VALUES
('9c900000-0000-0000-0000-000000000001', 'Mathematics', 'Class 1A, Class 1B', 60) ON CONFLICT DO NOTHING;

INSERT INTO public.teacher_subjects_taught ("id", "subject_name", "class", "total_students") VALUES
('9c900000-0000-0000-0000-000000000002', 'Physics', 'Class 2A, Class 2B', 55) ON CONFLICT DO NOTHING;

INSERT INTO public.teacher_subjects_taught ("id", "subject_name", "class", "total_students") VALUES
('9c900000-0000-0000-0000-000000000003', 'Chemistry', 'Class 3A', 45) ON CONFLICT DO NOTHING;

INSERT INTO public.teacher_subjects_taught ("id", "subject_name", "class", "total_students") VALUES
('9c900000-0000-0000-0000-000000000004', 'Biology', 'Class 4A, Class 4B', 70) ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
