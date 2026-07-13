-- Migration for teacher_timetables and teacher_substitution_requests tables
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.teacher_timetables (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "day" TEXT,
    "time_slot" TEXT,
    "subject" TEXT,
    "class" TEXT,
    "room" TEXT
);

CREATE TABLE IF NOT EXISTS public.teacher_substitution_requests (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "date" TIMESTAMP,
    "time_slot" TEXT,
    "class" TEXT,
    "subject" TEXT,
    "reason" TEXT,
    "status" TEXT
);

INSERT INTO public.teacher_timetables ("id", "day", "time_slot", "subject", "class", "room") VALUES
('9c000000-0000-0000-0000-000000000001', 'Monday', '08:00 AM - 09:00 AM', 'Mathematics', '10A', '101') ON CONFLICT DO NOTHING;

INSERT INTO public.teacher_timetables ("id", "day", "time_slot", "subject", "class", "room") VALUES
('9c000000-0000-0000-0000-000000000002', 'Monday', '09:00 AM - 10:00 AM', 'Physics', '11B', '202') ON CONFLICT DO NOTHING;

INSERT INTO public.teacher_substitution_requests ("id", "date", "time_slot", "class", "subject", "reason", "status") VALUES
('9d000000-0000-0000-0000-000000000001', '2025-12-26 00:00:00', '10:00 AM - 11:00 AM', '10A', 'Mathematics', 'Medical Checkup', 'Pending') ON CONFLICT DO NOTHING;

INSERT INTO public.teacher_substitution_requests ("id", "date", "time_slot", "class", "subject", "reason", "status") VALUES
('9d000000-0000-0000-0000-000000000002', '2025-12-27 00:00:00', '09:00 AM - 10:00 AM', '11B', 'Physics', 'Personal work', 'Approved') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
