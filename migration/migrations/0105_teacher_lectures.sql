-- Migration for teacher_lectures table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.teacher_lectures (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "subject_name" TEXT,
    "class" TEXT,
    "date" TIMESTAMP,
    "time" TEXT,
    "status" TEXT,
    "teacher_id" TEXT,
    "subject_id" TEXT,
    "student_group" TEXT,
    "duration" INTEGER,
    "location" TEXT,
    "attendance_count" INTEGER,
    "created_at" TIMESTAMP,
    "updated_at" TIMESTAMP,
    "reason_for_cancellation" TEXT
);

INSERT INTO public.teacher_lectures ("id", "subject_name", "class", "date", "time", "status", "teacher_id", "subject_id", "student_group", "duration", "location", "attendance_count", "created_at", "updated_at", "reason_for_cancellation") VALUES
('9e300000-0000-0000-0000-000000000001', 'Mathematics', 'R305 A', '2019-02-17 14:22:18', '10:30', 'Confirm', 'T001', 'S001', 'Group A', 60, 'Room 101', 25, '2019-01-10 12:00:00', '2019-01-15 12:00:00', '') ON CONFLICT DO NOTHING;

INSERT INTO public.teacher_lectures ("id", "subject_name", "class", "date", "time", "status", "teacher_id", "subject_id", "student_group", "duration", "location", "attendance_count", "created_at", "updated_at", "reason_for_cancellation") VALUES
('9e300000-0000-0000-0000-000000000002', 'Chemistry', 'R305 A', '2019-02-19 14:22:18', '10:30', 'Cancelled', 'T123', 'S456', 'Group A', 60, 'Room 305', 0, '2019-01-01 12:00:00', '2019-01-15 12:00:00', 'Weather conditions') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
