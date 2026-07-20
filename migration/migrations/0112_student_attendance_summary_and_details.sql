-- Migration for student_monthly_summaries and student_my_attendances tables
SET session_replication_role = 'replica';

CREATE TABLE IF NOT EXISTS public.student_monthly_summaries (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "month" TEXT,
    "total_days" INTEGER,
    "present" INTEGER,
    "absent" INTEGER,
    "late" INTEGER,
    "half_day" INTEGER,
    "percentage" NUMERIC(5,2)
);

CREATE TABLE IF NOT EXISTS public.student_my_attendances (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "date" TEXT,
    "status" TEXT,
    "check_in" TEXT,
    "check_out" TEXT,
    "working_hours" TEXT,
    "remarks" TEXT
);

INSERT INTO public.student_monthly_summaries ("id", "month", "total_days", "present", "absent", "late", "half_day", "percentage") VALUES
('9c800000-0000-0000-0000-000000000001', 'January 2025', 31, 25, 2, 3, 1, 80.65) ON CONFLICT DO NOTHING;

INSERT INTO public.student_monthly_summaries ("id", "month", "total_days", "present", "absent", "late", "half_day", "percentage") VALUES
('9c800000-0000-0000-0000-000000000002', 'February 2025', 28, 22, 3, 2, 1, 78.57) ON CONFLICT DO NOTHING;

INSERT INTO public.student_my_attendances ("id", "date", "status", "check_in", "check_out", "working_hours", "remarks") VALUES
('9d800000-0000-0000-0000-000000000001', '2025-12-01', 'Present', '08:30 AM', '03:30 PM', '7h 00m', 'On time') ON CONFLICT DO NOTHING;

INSERT INTO public.student_my_attendances ("id", "date", "status", "check_in", "check_out", "working_hours", "remarks") VALUES
('9d800000-0000-0000-0000-000000000002', '2025-12-02', 'Present', '08:25 AM', '03:35 PM', '7h 10m', 'Early') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
