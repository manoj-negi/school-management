-- Migration for sessions table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.sessions (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "session_name" TEXT,
    "start_date" TIMESTAMP,
    "end_date" TIMESTAMP,
    "status" TEXT,
    "instructor" TEXT,
    "room" TEXT
);

INSERT INTO public.sessions ("id", "session_name", "start_date", "end_date", "status", "instructor", "room") VALUES
('20000000-0000-0000-0000-000000000001', 'Session 1', '2023-06-01 00:00:00', '2023-10-31 23:59:59', 'Active', 'John Doe', '101') ON CONFLICT DO NOTHING;

INSERT INTO public.sessions ("id", "session_name", "start_date", "end_date", "status", "instructor", "room") VALUES
('20000000-0000-0000-0000-000000000002', 'Session 2', '2023-11-01 00:00:00', '2024-03-31 23:59:59', 'Active', 'Jane Smith', '102') ON CONFLICT DO NOTHING;

INSERT INTO public.sessions ("id", "session_name", "start_date", "end_date", "status", "instructor", "room") VALUES
('20000000-0000-0000-0000-000000000003', 'Session 3', '2024-04-01 00:00:00', '2024-05-31 23:59:59', 'Active', 'Alice Brown', '103') ON CONFLICT DO NOTHING;

INSERT INTO public.sessions ("id", "session_name", "start_date", "end_date", "status", "instructor", "room") VALUES
('20000000-0000-0000-0000-000000000004', 'Session 4', '2022-06-01 00:00:00', '2022-10-31 23:59:59', 'Inactive', 'Bob White', '104') ON CONFLICT DO NOTHING;

INSERT INTO public.sessions ("id", "session_name", "start_date", "end_date", "status", "instructor", "room") VALUES
('20000000-0000-0000-0000-000000000005', 'Session 5', '2022-11-01 00:00:00', '2023-03-31 23:59:59', 'Inactive', 'Charlie Green', '105') ON CONFLICT DO NOTHING;

INSERT INTO public.sessions ("id", "session_name", "start_date", "end_date", "status", "instructor", "room") VALUES
('20000000-0000-0000-0000-000000000006', 'Session 6', '2023-04-01 00:00:00', '2023-05-31 23:59:59', 'Inactive', 'David Black', '106') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
