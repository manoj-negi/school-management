-- Migration for lesson_plannings table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.lesson_plannings (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "topic_name" TEXT,
    "lesson_name" TEXT,
    "class_name" TEXT,
    "subject_name" TEXT,
    "teacher_name" TEXT,
    "lesson_date" TIMESTAMP,
    "status" TEXT,
    "objectives" TEXT,
    "teaching_method" TEXT
);

INSERT INTO public.lesson_plannings ("id", "topic_name", "lesson_name", "class_name", "subject_name", "teacher_name", "lesson_date", "status", "objectives", "teaching_method") VALUES
('70000000-0000-0000-0000-000000000001', 'Algebra Basics', 'Introduction to Algebra', 'Class 1', 'Mathematics', 'John Doe', '2023-10-01 00:00:00', 'Completed', 'Understand basic algebra', 'Lecture') ON CONFLICT DO NOTHING;

INSERT INTO public.lesson_plannings ("id", "topic_name", "lesson_name", "class_name", "subject_name", "teacher_name", "lesson_date", "status", "objectives", "teaching_method") VALUES
('70000000-0000-0000-0000-000000000002', 'Plant Biology', 'Photosynthesis Process', 'Class 2', 'Science', 'Jane Smith', '2023-10-02 00:00:00', 'In Progress', 'Learn photosynthesis', 'Lab') ON CONFLICT DO NOTHING;

INSERT INTO public.lesson_plannings ("id", "topic_name", "lesson_name", "class_name", "subject_name", "teacher_name", "lesson_date", "status", "objectives", "teaching_method") VALUES
('70000000-0000-0000-0000-000000000003', 'Literature', 'Modern Poetry', 'Class 3', 'English', 'Alice Brown', '2023-10-03 00:00:00', 'Planned', 'Analyze modern poems', 'Discussion') ON CONFLICT DO NOTHING;

INSERT INTO public.lesson_plannings ("id", "topic_name", "lesson_name", "class_name", "subject_name", "teacher_name", "lesson_date", "status", "objectives", "teaching_method") VALUES
('70000000-0000-0000-0000-000000000004', 'World History', 'The French Revolution', 'Class 4', 'History', 'Bob White', '2023-10-04 00:00:00', 'Completed', 'Revolution events', 'Video') ON CONFLICT DO NOTHING;

INSERT INTO public.lesson_plannings ("id", "topic_name", "lesson_name", "class_name", "subject_name", "teacher_name", "lesson_date", "status", "objectives", "teaching_method") VALUES
('70000000-0000-0000-0000-000000000005', 'Physical Geography', 'World Map Basics', 'Class 5', 'Geography', 'Charlie Green', '2023-10-05 00:00:00', 'In Progress', 'Map identification', 'Workshop') ON CONFLICT DO NOTHING;

INSERT INTO public.lesson_plannings ("id", "topic_name", "lesson_name", "class_name", "subject_name", "teacher_name", "lesson_date", "status", "objectives", "teaching_method") VALUES
('70000000-0000-0000-0000-000000000006', 'Classical Mechanics', 'Laws of Motion', 'Class 6', 'Physics', 'David Black', '2023-10-06 00:00:00', 'Planned', 'Newton laws', 'Problem Solving') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
