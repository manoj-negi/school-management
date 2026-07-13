-- Migration for today_schedules table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.today_schedules (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "subject" TEXT,
    "class" TEXT,
    "time" TEXT,
    "duration" TEXT,
    "room" TEXT,
    "status" TEXT
);

INSERT INTO public.today_schedules ("id", "subject", "class", "time", "duration", "room", "status") VALUES
('91000000-0000-0000-0000-000000000001', 'Mathematics', '10A', '08:00 AM', '45 Min', '101', 'Completed') ON CONFLICT DO NOTHING;

INSERT INTO public.today_schedules ("id", "subject", "class", "time", "duration", "room", "status") VALUES
('91000000-0000-0000-0000-000000000002', 'Physics', '11B', '09:00 AM', '45 Min', '202', 'Completed') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
