-- Migration for marks_entries table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.marks_entries (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "exam_name" TEXT,
    "student_name" TEXT,
    "roll_no" TEXT,
    "subject" TEXT,
    "marks_obtained" INT,
    "max_marks" INT,
    "status" TEXT
);

INSERT INTO public.marks_entries ("id", "exam_name", "student_name", "roll_no", "subject", "marks_obtained", "max_marks", "status") VALUES
('1cb51c72-ff96-419b-bf72-8e1216afb851', 'Mid-Term Jan 2024', 'John Doe', 'CS101', 'Mathematics', 85, 100, 'Passed'),
('2cb51c72-ff96-419b-bf72-8e1216afb852', 'Mid-Term Jan 2024', 'Jane Smith', 'CS102', 'Mathematics', 92, 100, 'Passed'),
('3cb51c72-ff96-419b-bf72-8e1216afb853', 'Mid-Term Jan 2024', 'Robert Brown', 'CS103', 'Mathematics', 45, 100, 'Passed'),
('4cb51c72-ff96-419b-bf72-8e1216afb854', 'Mid-Term Jan 2024', 'Emily Davis', 'CS104', 'Physics', 78, 100, 'Passed'),
('5cb51c72-ff96-419b-bf72-8e1216afb855', 'Mid-Term Jan 2024', 'Michael Wilson', 'CS105', 'Physics', 25, 100, 'Failed'),
('6cb51c72-ff96-419b-bf72-8e1216afb856', 'Final Exam May 2024', 'Sarah Miller', 'ME201', 'Thermodynamics', 88, 100, 'Passed'),
('7cb51c72-ff96-419b-bf72-8e1216afb857', 'Final Exam May 2024', 'David Taylor', 'ME202', 'Thermodynamics', 95, 100, 'Passed'),
('8cb51c72-ff96-419b-bf72-8e1216afb858', 'Final Exam May 2024', 'Linda Garcia', 'ME203', 'Thermodynamics', 38, 100, 'Passed'),
('9cb51c72-ff96-419b-bf72-8e1216afb859', 'Internal Assessment 1', 'James Anderson', 'EC301', 'Digital Logic', 18, 20, 'Passed'),
('acb51c72-ff96-419b-bf72-8e1216afb860', 'Internal Assessment 1', 'Barbara Thomas', 'EC302', 'Digital Logic', 15, 20, 'Passed'),
('bcb51c72-ff96-419b-bf72-8e1216afb861', 'Quarterly Exam', 'William Moore', 'S101', 'Science', 65, 100, 'Passed'),
('ccb51c72-ff96-419b-bf72-8e1216afb862', 'Quarterly Exam', 'Elizabeth Jackson', 'S102', 'Science', 72, 100, 'Passed')
ON CONFLICT DO NOTHING;
SET session_replication_role = 'origin';
