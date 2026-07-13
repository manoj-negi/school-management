-- Migration for teacher_student_attendances table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.teacher_student_attendances (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "roll_no" TEXT,
    "name" TEXT,
    "date" TIMESTAMP,
    "status" TEXT,
    "remarks" TEXT
);

INSERT INTO public.teacher_student_attendances ("id", "roll_no", "name", "date", "status", "remarks") VALUES
('98000000-0000-0000-0000-000000000001', '101', 'John Doe', '2025-12-26 00:00:00', 'Present', '-') ON CONFLICT DO NOTHING;

INSERT INTO public.teacher_student_attendances ("id", "roll_no", "name", "date", "status", "remarks") VALUES
('98000000-0000-0000-0000-000000000002', '102', 'Jane Smith', '2025-12-26 00:00:00', 'Present', '-') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
