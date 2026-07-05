-- Migration for course_curriculums table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.course_curriculums (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "course_name" TEXT,
    "class_name" TEXT,
    "subject_name" TEXT,
    "description" TEXT,
    "status" TEXT,
    "duration" TEXT,
    "reference_material" TEXT
);

INSERT INTO public.course_curriculums ("id", "course_name", "class_name", "subject_name", "description", "status", "duration", "reference_material") VALUES
('50000000-0000-0000-0000-000000000001', 'Algebra Basics', 'Class 1', 'Mathematics', 'Introduction to variables and equations.', 'Active', '4 weeks', 'NCERT Mathematics') ON CONFLICT DO NOTHING;

INSERT INTO public.course_curriculums ("id", "course_name", "class_name", "subject_name", "description", "status", "duration", "reference_material") VALUES
('50000000-0000-0000-0000-000000000002', 'Photosynthesis', 'Class 2', 'Science', 'Understanding how plants make food.', 'Active', '2 weeks', 'Science Today') ON CONFLICT DO NOTHING;

INSERT INTO public.course_curriculums ("id", "course_name", "class_name", "subject_name", "description", "status", "duration", "reference_material") VALUES
('50000000-0000-0000-0000-000000000003', 'Essay Writing', 'Class 3', 'English', 'Techniques for effective writing.', 'Active', '3 weeks', 'English Grammar') ON CONFLICT DO NOTHING;

INSERT INTO public.course_curriculums ("id", "course_name", "class_name", "subject_name", "description", "status", "duration", "reference_material") VALUES
('50000000-0000-0000-0000-000000000004', 'Ancient Civilizations', 'Class 4', 'History', 'Study of early human societies.', 'Inactive', '5 weeks', 'History World') ON CONFLICT DO NOTHING;

INSERT INTO public.course_curriculums ("id", "course_name", "class_name", "subject_name", "description", "status", "duration", "reference_material") VALUES
('50000000-0000-0000-0000-000000000005', 'Map Reading', 'Class 5', 'Geography', 'Basics of cartography and map use.', 'Active', '2 weeks', 'Geography Atlas') ON CONFLICT DO NOTHING;

INSERT INTO public.course_curriculums ("id", "course_name", "class_name", "subject_name", "description", "status", "duration", "reference_material") VALUES
('50000000-0000-0000-0000-000000000006', 'Newton Laws', 'Class 6', 'Physics', 'Fundamental laws of motion.', 'Active', '4 weeks', 'Concepts of Physics') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
