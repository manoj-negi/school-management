-- Migration for teacher_marks_entries table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.teacher_marks_entries (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "roll_no" TEXT,
    "student_name" TEXT,
    "class" TEXT,
    "subject" TEXT,
    "marks_obtained" INTEGER,
    "max_marks" INTEGER,
    "status" TEXT
);

INSERT INTO public.teacher_marks_entries ("id", "roll_no", "student_name", "class", "subject", "marks_obtained", "max_marks", "status") VALUES
('9a000000-0000-0000-0000-000000000001', '101', 'John Doe', '10A', 'Mathematics', 85, 100, 'Submitted') ON CONFLICT DO NOTHING;

INSERT INTO public.teacher_marks_entries ("id", "roll_no", "student_name", "class", "subject", "marks_obtained", "max_marks", "status") VALUES
('9a000000-0000-0000-0000-000000000002', '102', 'Jane Smith', '10A', 'Mathematics', 78, 100, 'Submitted') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
