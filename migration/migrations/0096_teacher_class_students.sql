-- Migration for teacher_class_students table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.teacher_class_students (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "roll_no" TEXT,
    "name" TEXT,
    "gender" TEXT,
    "parent_name" TEXT,
    "mobile" TEXT,
    "email" TEXT,
    "address" TEXT
);

INSERT INTO public.teacher_class_students ("id", "roll_no", "name", "gender", "parent_name", "mobile", "email", "address") VALUES
('97000000-0000-0000-0000-000000000001', '101', 'John Doe', 'Male', 'Robert Doe', '1234567890', 'john@example.com', '123 Street, City') ON CONFLICT DO NOTHING;

INSERT INTO public.teacher_class_students ("id", "roll_no", "name", "gender", "parent_name", "mobile", "email", "address") VALUES
('97000000-0000-0000-0000-000000000002', '102', 'Jane Smith', 'Female', 'Michael Smith', '9876543210', 'jane@example.com', '456 Avenue, City') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
