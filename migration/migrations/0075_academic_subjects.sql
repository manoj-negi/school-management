-- Migration for academic_subjects table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.academic_subjects (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "subject_name" TEXT,
    "subject_code" TEXT,
    "subject_type" TEXT,
    "status" TEXT,
    "prerequisites" TEXT,
    "credits" TEXT
);

INSERT INTO public.academic_subjects ("id", "subject_name", "subject_code", "subject_type", "status", "prerequisites", "credits") VALUES
('40000000-0000-0000-0000-000000000001', 'Mathematics', 'MATH101', 'Core', 'Active', 'None', '4') ON CONFLICT DO NOTHING;

INSERT INTO public.academic_subjects ("id", "subject_name", "subject_code", "subject_type", "status", "prerequisites", "credits") VALUES
('40000000-0000-0000-0000-000000000002', 'Science', 'SCI101', 'Core', 'Active', 'None', '4') ON CONFLICT DO NOTHING;

INSERT INTO public.academic_subjects ("id", "subject_name", "subject_code", "subject_type", "status", "prerequisites", "credits") VALUES
('40000000-0000-0000-0000-000000000003', 'English', 'ENG101', 'Core', 'Active', 'None', '3') ON CONFLICT DO NOTHING;

INSERT INTO public.academic_subjects ("id", "subject_name", "subject_code", "subject_type", "status", "prerequisites", "credits") VALUES
('40000000-0000-0000-0000-000000000004', 'History', 'HIS101', 'Elective', 'Active', 'None', '3') ON CONFLICT DO NOTHING;

INSERT INTO public.academic_subjects ("id", "subject_name", "subject_code", "subject_type", "status", "prerequisites", "credits") VALUES
('40000000-0000-0000-0000-000000000005', 'Geography', 'GEO101', 'Elective', 'Active', 'None', '3') ON CONFLICT DO NOTHING;

INSERT INTO public.academic_subjects ("id", "subject_name", "subject_code", "subject_type", "status", "prerequisites", "credits") VALUES
('40000000-0000-0000-0000-000000000006', 'Physics', 'PHY101', 'Core', 'Active', 'Science', '4') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
