-- Migration for teacher_classes table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.teacher_classes (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "class_name" TEXT,
    "subject" TEXT,
    "time" TEXT,
    "room_no" TEXT
);

INSERT INTO public.teacher_classes ("id", "class_name", "subject", "time", "room_no") VALUES
('92000000-0000-0000-0000-000000000001', 'Class 1A', 'Mathematics', '9:00 AM - 10:00 AM', '101') ON CONFLICT DO NOTHING;

INSERT INTO public.teacher_classes ("id", "class_name", "subject", "time", "room_no") VALUES
('92000000-0000-0000-0000-000000000002', 'Class 2B', 'Physics', '10:00 AM - 11:00 AM', '102') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
