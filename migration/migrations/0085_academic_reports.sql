-- Migration for academic_reports table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.academic_reports (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "img" TEXT,
    "report_type" TEXT,
    "class_name" TEXT,
    "subject" TEXT,
    "academic_year" TEXT,
    "term" TEXT,
    "generated_by" TEXT,
    "date" TIMESTAMP,
    "status" TEXT
);

INSERT INTO public.academic_reports ("id", "img", "report_type", "class_name", "subject", "academic_year", "term", "generated_by", "date", "status") VALUES
('86000000-0000-0000-0000-000000000001', 'assets/images/user/user1.jpg', 'Progress Report', 'Class 10-A', 'Mathematics', '2024-25', 'First Term', 'John Doe', '2024-12-20 00:00:00', 'Completed') ON CONFLICT DO NOTHING;

INSERT INTO public.academic_reports ("id", "img", "report_type", "class_name", "subject", "academic_year", "term", "generated_by", "date", "status") VALUES
('86000000-0000-0000-0000-000000000002', 'assets/images/user/user2.jpg', 'Performance Analysis', 'Class 9-B', 'Science', '2024-25', 'First Term', 'Sarah Smith', '2024-12-19 00:00:00', 'Completed') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
