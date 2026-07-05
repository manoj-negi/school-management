-- Migration for exam_reports table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.exam_reports (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "img" TEXT,
    "exam_name" TEXT,
    "class_name" TEXT,
    "subject" TEXT,
    "exam_date" TIMESTAMP,
    "pass_percentage" NUMERIC,
    "average_marks" NUMERIC,
    "generated_by" TEXT,
    "date" TIMESTAMP,
    "status" TEXT
);

INSERT INTO public.exam_reports ("id", "img", "exam_name", "class_name", "subject", "exam_date", "pass_percentage", "average_marks", "generated_by", "date", "status") VALUES
('89000000-0000-0000-0000-000000000001', 'assets/images/user/user1.jpg', 'First Term Exam', 'Class 10-A', 'Mathematics', '2024-11-15 00:00:00', 88.50, 72.00, 'John Doe', '2024-12-01 00:00:00', 'Completed') ON CONFLICT DO NOTHING;

INSERT INTO public.exam_reports ("id", "img", "exam_name", "class_name", "subject", "exam_date", "pass_percentage", "average_marks", "generated_by", "date", "status") VALUES
('89000000-0000-0000-0000-000000000002', 'assets/images/user/user2.jpg', 'Mid Term Exam', 'Class 9-B', 'Science', '2024-11-20 00:00:00', 92.00, 78.00, 'Sarah Smith', '2024-12-08 00:00:00', 'Completed') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
