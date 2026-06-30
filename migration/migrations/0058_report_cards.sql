-- Migration for report_cards table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.report_cards (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "student_name" TEXT,
    "roll_no" TEXT,
    "exam_name" TEXT,
    "total_marks" INT,
    "percentage" NUMERIC(5,2),
    "grade" TEXT,
    "result" TEXT
);

INSERT INTO public.report_cards ("id", "student_name", "roll_no", "exam_name", "total_marks", "percentage", "grade", "result") VALUES
('1ec51c72-ff96-419b-bf72-8e1216afb801', 'John Doe',       'CS101', 'Mid-Term Jan 2024',  450, 90.00, 'A+', 'Pass'),
('2ec51c72-ff96-419b-bf72-8e1216afb802', 'Jane Smith',     'CS102', 'Mid-Term Jan 2024',  420, 84.00, 'A',  'Pass'),
('3ec51c72-ff96-419b-bf72-8e1216afb803', 'Robert Brown',   'CS103', 'Mid-Term Jan 2024',  380, 76.00, 'B+', 'Pass'),
('4ec51c72-ff96-419b-bf72-8e1216afb804', 'Emily Davis',    'CS104', 'Mid-Term Jan 2024',  350, 70.00, 'B',  'Pass'),
('5ec51c72-ff96-419b-bf72-8e1216afb805', 'Michael Wilson', 'CS105', 'Mid-Term Jan 2024',  280, 56.00, 'C',  'Pass'),
('6ec51c72-ff96-419b-bf72-8e1216afb806', 'Sarah Miller',   'ME201', 'Final Exam May 2024',480, 96.00, 'O',  'Pass'),
('7ec51c72-ff96-419b-bf72-8e1216afb807', 'David Taylor',   'ME202', 'Final Exam May 2024',410, 82.00, 'A',  'Pass'),
('8ec51c72-ff96-419b-bf72-8e1216afb808', 'Linda Garcia',   'ME203', 'Final Exam May 2024',150, 30.00, 'F',  'Fail')
ON CONFLICT DO NOTHING;
SET session_replication_role = 'origin';
