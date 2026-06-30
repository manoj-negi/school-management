-- Migration for result_generations table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.result_generations (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "exam_name" TEXT,
    "course" TEXT,
    "semester" TEXT,
    "result_date" TEXT,
    "status" TEXT
);

INSERT INTO public.result_generations ("id", "exam_name", "course", "semester", "result_date", "status") VALUES
('1db51c72-ff96-419b-bf72-8e1216afb901', 'Mid-Term Jan 2024', 'B.Tech', 'Sem 1', '2024-02-15', 'Published'),
('2db51c72-ff96-419b-bf72-8e1216afb902', 'Mid-Term Jan 2024', 'MBA', 'Sem 2', '2024-02-20', 'Published'),
('3db51c72-ff96-419b-bf72-8e1216afb903', 'Final Exam May 2024', 'B.Com', 'Sem 3', '2024-06-10', 'Pending'),
('4db51c72-ff96-419b-bf72-8e1216afb904', 'Entrance Test 2024', 'All', 'N/A', '2024-04-05', 'Published'),
('5db51c72-ff96-419b-bf72-8e1216afb905', 'Internal Assessment 1', 'B.Tech', 'Sem 4', '2024-02-05', 'Published'),
('6db51c72-ff96-419b-bf72-8e1216afb906', 'Quarterly Exam', 'School', 'Class 10', '2024-07-01', 'Pending')
ON CONFLICT DO NOTHING;
SET session_replication_role = 'origin';
