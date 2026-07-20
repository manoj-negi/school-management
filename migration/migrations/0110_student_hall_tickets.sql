-- Migration for student_hall_tickets table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.student_hall_tickets (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "exam_name" TEXT,
    "subject" TEXT,
    "exam_date" TEXT,
    "start_time" TEXT,
    "room_no" TEXT,
    "roll_no" TEXT,
    "download_url" TEXT
);

INSERT INTO public.student_hall_tickets ("id", "exam_name", "subject", "exam_date", "start_time", "room_no", "roll_no", "download_url") VALUES
('9d700000-0000-0000-0000-000000000001', 'Final Examination 2026', 'Mathematics', '2026-03-10', '09:00 AM', '101', 'S1001', '#') ON CONFLICT DO NOTHING;

INSERT INTO public.student_hall_tickets ("id", "exam_name", "subject", "exam_date", "start_time", "room_no", "roll_no", "download_url") VALUES
('9d700000-0000-0000-0000-000000000002', 'Final Examination 2026', 'Physics', '2026-03-12', '09:00 AM', '102', 'S1001', '#') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
