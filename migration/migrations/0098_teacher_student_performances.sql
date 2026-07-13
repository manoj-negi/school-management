-- Migration for teacher_student_performances table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.teacher_student_performances (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "roll_no" TEXT,
    "name" TEXT,
    "subject" TEXT,
    "internal_marks" INTEGER,
    "external_marks" INTEGER,
    "total_marks" INTEGER,
    "grade" TEXT
);

INSERT INTO public.teacher_student_performances ("id", "roll_no", "name", "subject", "internal_marks", "external_marks", "total_marks", "grade") VALUES
('99000000-0000-0000-0000-000000000001', '101', 'John Doe', 'Mathematics', 25, 65, 90, 'A+') ON CONFLICT DO NOTHING;

INSERT INTO public.teacher_student_performances ("id", "roll_no", "name", "subject", "internal_marks", "external_marks", "total_marks", "grade") VALUES
('99000000-0000-0000-0000-000000000002', '102', 'Jane Smith', 'Physics', 22, 60, 82, 'A') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
