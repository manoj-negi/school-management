-- Migration for teacher_grade_submissions table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.teacher_grade_submissions (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "roll_no" TEXT,
    "student_name" TEXT,
    "average_marks" INTEGER,
    "grade" TEXT,
    "status" TEXT,
    "submission_date" TIMESTAMP
);

INSERT INTO public.teacher_grade_submissions ("id", "roll_no", "student_name", "average_marks", "grade", "status", "submission_date") VALUES
('9b000000-0000-0000-0000-000000000001', '101', 'John Doe', 88, 'A+', 'Submitted', '2025-12-26 00:00:00') ON CONFLICT DO NOTHING;

INSERT INTO public.teacher_grade_submissions ("id", "roll_no", "student_name", "average_marks", "grade", "status", "submission_date") VALUES
('9b000000-0000-0000-0000-000000000002', '102', 'Jane Smith', 82, 'A', 'Submitted', '2025-12-26 00:00:00') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
