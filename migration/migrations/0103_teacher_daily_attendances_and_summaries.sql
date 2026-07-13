-- Migration for teacher_daily_attendances and teacher_attendance_summaries tables
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.teacher_daily_attendances (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "roll_no" TEXT,
    "student_name" TEXT,
    "class" TEXT,
    "date" TIMESTAMP,
    "status" TEXT,
    "note" TEXT
);

CREATE TABLE IF NOT EXISTS public.teacher_attendance_summaries (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "class" TEXT,
    "subject" TEXT,
    "total_students" INTEGER,
    "present" INTEGER,
    "absent" INTEGER,
    "on_leave" INTEGER,
    "attendance_percentage" TEXT,
    "date" TIMESTAMP
);

INSERT INTO public.teacher_daily_attendances ("id", "roll_no", "student_name", "class", "date", "status", "note") VALUES
('9e100000-0000-0000-0000-000000000001', '101', 'John Doe', '10A', '2025-12-26 00:00:00', 'Present', '-') ON CONFLICT DO NOTHING;

INSERT INTO public.teacher_daily_attendances ("id", "roll_no", "student_name", "class", "date", "status", "note") VALUES
('9e100000-0000-0000-0000-000000000002', '102', 'Jane Smith', '10A', '2025-12-26 00:00:00', 'Present', '-') ON CONFLICT DO NOTHING;

INSERT INTO public.teacher_attendance_summaries ("id", "class", "subject", "total_students", "present", "absent", "on_leave", "attendance_percentage", "date") VALUES
('9f100000-0000-0000-0000-000000000001', '10A', 'Mathematics', 40, 38, 2, 0, '95%', '2025-12-26 00:00:00') ON CONFLICT DO NOTHING;

INSERT INTO public.teacher_attendance_summaries ("id", "class", "subject", "total_students", "present", "absent", "on_leave", "attendance_percentage", "date") VALUES
('9f100000-0000-0000-0000-000000000002', '11B', 'Physics', 35, 32, 2, 1, '91.4%', '2025-12-26 00:00:00') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
