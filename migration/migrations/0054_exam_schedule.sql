-- Recreate exam_schedules table with proper columns
SET session_replication_role = 'replica';
DROP TABLE IF EXISTS public.exam_schedule;

CREATE TABLE IF NOT EXISTS public.exam_schedules (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "exam_type" TEXT,
    "course" TEXT,
    "semester" TEXT,
    "subject" TEXT,
    "exam_date" TIMESTAMP,
    "start_time" TEXT,
    "end_time" TEXT,
    "room_no" TEXT
);

INSERT INTO public.exam_schedules ("id", "exam_type", "course", "semester", "subject", "exam_date", "start_time", "end_time", "room_no") VALUES
('1ab51c72-ff96-419b-bf72-8e1216afb751', 'Internal Assessment 1', 'B.Tech', 'Sem 1', 'Mathematics I', '2024-01-15 00:00:00', '10:00 AM', '11:30 AM', '101'),
('2ab51c72-ff96-419b-bf72-8e1216afb752', 'Internal Assessment 1', 'B.Tech', 'Sem 1', 'Physics I', '2024-01-16 00:00:00', '10:00 AM', '11:30 AM', '102'),
('3ab51c72-ff96-419b-bf72-8e1216afb753', 'Internal Assessment 1', 'B.Tech', 'Sem 1', 'Chemistry I', '2024-01-17 00:00:00', '10:00 AM', '11:30 AM', '103'),
('4ab51c72-ff96-419b-bf72-8e1216afb754', 'Internal Assessment 2', 'MBA', 'Sem 2', 'Marketing Management', '2024-02-10 00:00:00', '02:00 PM', '03:30 PM', '201'),
('5ab51c72-ff96-419b-bf72-8e1216afb755', 'Internal Assessment 2', 'MBA', 'Sem 2', 'Financial Accounting', '2024-02-11 00:00:00', '02:00 PM', '03:30 PM', '202'),
('6ab51c72-ff96-419b-bf72-8e1216afb756', 'Mid-Term Examination', 'B.Com', 'Sem 3', 'Business Law', '2024-03-05 00:00:00', '10:00 AM', '01:00 PM', '301'),
('7ab51c72-ff96-419b-bf72-8e1216afb757', 'Mid-Term Examination', 'B.Com', 'Sem 3', 'Corporate Accounting', '2024-03-06 00:00:00', '10:00 AM', '01:00 PM', '302'),
('8ab51c72-ff96-419b-bf72-8e1216afb758', 'End-Term Examination', 'B.Tech', 'Sem 4', 'Data Structures', '2024-05-20 00:00:00', '10:00 AM', '01:00 PM', '401'),
('9ab51c72-ff96-419b-bf72-8e1216afb759', 'End-Term Examination', 'B.Tech', 'Sem 4', 'Operating Systems', '2024-05-22 00:00:00', '10:00 AM', '01:00 PM', '402'),
('aab51c72-ff96-419b-bf72-8e1216afb760', 'Practical Examination', 'B.Tech', 'Sem 4', 'DS Lab', '2024-05-25 00:00:00', '09:00 AM', '12:00 PM', 'Lab 1'),
('bab51c72-ff96-419b-bf72-8e1216afb761', 'Quarterly Exam', 'School', 'Class 10', 'Science', '2024-06-10 00:00:00', '08:30 AM', '11:30 AM', 'S1'),
('cab51c72-ff96-419b-bf72-8e1216afb762', 'Annual Exam', 'School', 'Class 12', 'English', '2024-03-15 00:00:00', '09:00 AM', '12:00 PM', 'H1')
ON CONFLICT DO NOTHING;
SET session_replication_role = 'origin';
