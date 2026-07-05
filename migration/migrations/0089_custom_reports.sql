-- Migration for custom_reports table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.custom_reports (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "report_name" TEXT,
    "description" TEXT,
    "category" TEXT,
    "created_by" TEXT,
    "date" TIMESTAMP,
    "status" TEXT
);

INSERT INTO public.custom_reports ("id", "report_name", "description", "category", "created_by", "date", "status") VALUES
('90000000-0000-0000-0000-000000000001', 'Student Merit List', 'List of students with top marks in exams', 'Academic', 'John Doe', '2024-12-01 00:00:00', 'Active') ON CONFLICT DO NOTHING;

INSERT INTO public.custom_reports ("id", "report_name", "description", "category", "created_by", "date", "status") VALUES
('90000000-0000-0000-0000-000000000002', 'Revenue Breakdown', 'Detailed breakdown of fee collection by category', 'Finance', 'Sarah Smith', '2024-12-05 00:00:00', 'Active') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
