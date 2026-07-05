-- Migration for academic_classes table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.academic_classes (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "class_name" TEXT,
    "section" TEXT,
    "academic_year" TEXT,
    "teacher" TEXT,
    "status" TEXT,
    "student_count" TEXT,
    "room_number" TEXT
);

INSERT INTO public.academic_classes ("id", "class_name", "section", "academic_year", "teacher", "status", "student_count", "room_number") VALUES
('30000000-0000-0000-0000-000000000001', 'Class 1', 'A', '2023-24', 'John Doe', 'Active', '40', '101') ON CONFLICT DO NOTHING;

INSERT INTO public.academic_classes ("id", "class_name", "section", "academic_year", "teacher", "status", "student_count", "room_number") VALUES
('30000000-0000-0000-0000-000000000002', 'Class 2', 'B', '2023-24', 'Jane Smith', 'Active', '35', '102') ON CONFLICT DO NOTHING;

INSERT INTO public.academic_classes ("id", "class_name", "section", "academic_year", "teacher", "status", "student_count", "room_number") VALUES
('30000000-0000-0000-0000-000000000003', 'Class 3', 'A', '2023-24', 'Alice Brown', 'Active', '38', '103') ON CONFLICT DO NOTHING;

INSERT INTO public.academic_classes ("id", "class_name", "section", "academic_year", "teacher", "status", "student_count", "room_number") VALUES
('30000000-0000-0000-0000-000000000004', 'Class 4', 'C', '2023-24', 'Bob White', 'Inactive', '42', '104') ON CONFLICT DO NOTHING;

INSERT INTO public.academic_classes ("id", "class_name", "section", "academic_year", "teacher", "status", "student_count", "room_number") VALUES
('30000000-0000-0000-0000-000000000005', 'Class 5', 'B', '2023-24', 'Charlie Green', 'Active', '30', '105') ON CONFLICT DO NOTHING;

INSERT INTO public.academic_classes ("id", "class_name", "section", "academic_year", "teacher", "status", "student_count", "room_number") VALUES
('30000000-0000-0000-0000-000000000006', 'Class 6', 'A', '2023-24', 'David Black', 'Active', '36', '106') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
