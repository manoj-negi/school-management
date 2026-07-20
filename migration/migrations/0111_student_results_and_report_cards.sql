-- Migration for student_results and student_report_cards tables
SET session_replication_role = 'replica';

CREATE TABLE IF NOT EXISTS public.student_results (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "exam_name" TEXT,
    "total_subjects" INTEGER,
    "total_marks" INTEGER,
    "obtained_marks" INTEGER,
    "percentage" NUMERIC(5,2),
    "grade" TEXT,
    "result_status" TEXT,
    "published_date" TEXT
);

CREATE TABLE IF NOT EXISTS public.student_report_cards (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "academic_year" TEXT,
    "class_name" TEXT,
    "exam_name" TEXT,
    "total_marks" INTEGER,
    "obtained_marks" INTEGER,
    "percentage" NUMERIC(5,2),
    "grade" TEXT,
    "result" TEXT,
    "download_url" TEXT
);

INSERT INTO public.student_results ("id", "exam_name", "total_subjects", "total_marks", "obtained_marks", "percentage", "grade", "result_status", "published_date") VALUES
('9a800000-0000-0000-0000-000000000001', 'Final Exam 2024', 6, 600, 540, 90.00, 'A+', 'Pass', '2024-05-15') ON CONFLICT DO NOTHING;

INSERT INTO public.student_results ("id", "exam_name", "total_subjects", "total_marks", "obtained_marks", "percentage", "grade", "result_status", "published_date") VALUES
('9a800000-0000-0000-0000-000000000002', 'Mid Term 2024', 6, 600, 510, 85.00, 'A', 'Pass', '2024-10-10') ON CONFLICT DO NOTHING;

INSERT INTO public.student_report_cards ("id", "academic_year", "class_name", "exam_name", "total_marks", "obtained_marks", "percentage", "grade", "result", "download_url") VALUES
('9b800000-0000-0000-0000-000000000001', '2024-2025', '10th Standard', 'Annual Exam', 600, 540, 90.00, 'A+', 'Pass', '#') ON CONFLICT DO NOTHING;

INSERT INTO public.student_report_cards ("id", "academic_year", "class_name", "exam_name", "total_marks", "obtained_marks", "percentage", "grade", "result", "download_url") VALUES
('9b800000-0000-0000-0000-000000000002', '2023-2024', '9th Standard', 'Annual Exam', 600, 510, 85.00, 'A', 'Pass', '#') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
