-- Migration for hall_allocations table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.hall_allocations (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "exam_name" TEXT,
    "student_name" TEXT,
    "roll_no" TEXT,
    "hall_no" TEXT,
    "seat_no" TEXT
);

INSERT INTO public.hall_allocations ("id", "exam_name", "student_name", "roll_no", "hall_no", "seat_no") VALUES
('1ab51c72-ff96-419b-bf72-8e1216afb851', 'Mid-Term Jan 2024', 'John Doe', 'CS101', 'Hall A', 'S1'),
('2ab51c72-ff96-419b-bf72-8e1216afb852', 'Mid-Term Jan 2024', 'Jane Smith', 'CS102', 'Hall A', 'S2'),
('3ab51c72-ff96-419b-bf72-8e1216afb853', 'Mid-Term Jan 2024', 'Robert Brown', 'CS103', 'Hall A', 'S3'),
('4ab51c72-ff96-419b-bf72-8e1216afb854', 'Mid-Term Jan 2024', 'Emily Davis', 'CS104', 'Hall B', 'S1'),
('5ab51c72-ff96-419b-bf72-8e1216afb855', 'Mid-Term Jan 2024', 'Michael Wilson', 'CS105', 'Hall B', 'S2'),
('6ab51c72-ff96-419b-bf72-8e1216afb856', 'Final Exam May 2024', 'Sarah Miller', 'ME201', 'Hall C', 'A10'),
('7ab51c72-ff96-419b-bf72-8e1216afb857', 'Final Exam May 2024', 'David Taylor', 'ME202', 'Hall C', 'A11'),
('8ab51c72-ff96-419b-bf72-8e1216afb858', 'Final Exam May 2024', 'Linda Garcia', 'ME203', 'Hall C', 'A12'),
('9ab51c72-ff96-419b-bf72-8e1216afb859', 'Entrance Test 2024', 'James Anderson', 'ENT001', 'Main Hall', 'M01'),
('aab51c72-ff96-419b-bf72-8e1216afb860', 'Entrance Test 2024', 'Barbara Thomas', 'ENT002', 'Main Hall', 'M02'),
('bab51c72-ff96-419b-bf72-8e1216afb861', 'Internal Assessment 1', 'William Moore', 'EC301', 'Room 101', 'R1'),
('cab51c72-ff96-419b-bf72-8e1216afb862', 'Internal Assessment 1', 'Elizabeth Jackson', 'EC302', 'Room 101', 'R2')
ON CONFLICT DO NOTHING;
SET session_replication_role = 'origin';
