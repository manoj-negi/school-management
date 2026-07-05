-- Migration for assignments table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.assignments (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "class_name" TEXT,
    "subject_name" TEXT,
    "teacher_name" TEXT,
    "assignment_date" TIMESTAMP,
    "status" TEXT,
    "title" TEXT,
    "deadline" TIMESTAMP,
    "details" TEXT
);

INSERT INTO public.assignments ("id", "class_name", "subject_name", "teacher_name", "assignment_date", "status", "title", "deadline", "details") VALUES
('60000000-0000-0000-0000-000000000001', 'Class 1', 'Mathematics', 'John Doe', '2023-10-01 00:00:00', 'Published', 'Algebra Basics', '2023-10-10 23:59:59', 'Solve exercises 1 to 10.') ON CONFLICT DO NOTHING;

INSERT INTO public.assignments ("id", "class_name", "subject_name", "teacher_name", "assignment_date", "status", "title", "deadline", "details") VALUES
('60000000-0000-0000-0000-000000000002', 'Class 2', 'Science', 'Jane Smith', '2023-10-02 00:00:00', 'Draft', 'Photosynthesis', '2023-10-12 23:59:59', 'Draw a diagram of photosynthesis.') ON CONFLICT DO NOTHING;

INSERT INTO public.assignments ("id", "class_name", "subject_name", "teacher_name", "assignment_date", "status", "title", "deadline", "details") VALUES
('60000000-0000-0000-0000-000000000003', 'Class 3', 'English', 'Alice Brown', '2023-10-03 00:00:00', 'Published', 'Essay Writing', '2023-10-15 23:59:59', 'Write an essay on environment.') ON CONFLICT DO NOTHING;

INSERT INTO public.assignments ("id", "class_name", "subject_name", "teacher_name", "assignment_date", "status", "title", "deadline", "details") VALUES
('60000000-0000-0000-0000-000000000004', 'Class 4', 'History', 'Bob White', '2023-10-04 00:00:00', 'Published', 'Ancient Civilizations', '2023-10-20 23:59:59', 'Research about Indus Valley.') ON CONFLICT DO NOTHING;

INSERT INTO public.assignments ("id", "class_name", "subject_name", "teacher_name", "assignment_date", "status", "title", "deadline", "details") VALUES
('60000000-0000-0000-0000-000000000005', 'Class 5', 'Geography', 'Charlie Green', '2023-10-05 00:00:00', 'Draft', 'Map Reading', '2023-10-22 23:59:59', 'Identify major rivers in India.') ON CONFLICT DO NOTHING;

INSERT INTO public.assignments ("id", "class_name", "subject_name", "teacher_name", "assignment_date", "status", "title", "deadline", "details") VALUES
('60000000-0000-0000-0000-000000000006', 'Class 6', 'Physics', 'David Black', '2023-10-06 00:00:00', 'Published', 'Newton Laws', '2023-10-25 23:59:59', 'Explain the three laws of motion.') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
