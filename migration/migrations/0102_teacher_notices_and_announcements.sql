-- Migration for teacher_notices and teacher_announcements tables
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.teacher_notices (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "title" TEXT,
    "date" TIMESTAMP,
    "category" TEXT,
    "details" TEXT
);

CREATE TABLE IF NOT EXISTS public.teacher_announcements (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "title" TEXT,
    "date" TIMESTAMP,
    "target" TEXT,
    "description" TEXT
);

INSERT INTO public.teacher_notices ("id", "title", "date", "category", "details") VALUES
('9e000000-0000-0000-0000-000000000001', 'Annual Sports Day', '2025-12-26 00:00:00', 'Information', 'Details about sports day') ON CONFLICT DO NOTHING;

INSERT INTO public.teacher_notices ("id", "title", "date", "category", "details") VALUES
('9e000000-0000-0000-0000-000000000002', 'Internal Exam Schedule', '2025-12-25 00:00:00', 'Academic', 'Exams starting from next week') ON CONFLICT DO NOTHING;

INSERT INTO public.teacher_announcements ("id", "title", "date", "target", "description") VALUES
('9f000000-0000-0000-0000-000000000001', 'Exam Guidelines 2025', '2025-12-25 00:00:00', 'All Students', 'Guidelines for upcoming exams') ON CONFLICT DO NOTHING;

INSERT INTO public.teacher_announcements ("id", "title", "date", "target", "description") VALUES
('9f000000-0000-0000-0000-000000000002', 'Class 10A Field Trip', '2025-12-24 00:00:00', '10A', 'Permission slips required') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
