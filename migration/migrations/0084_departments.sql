-- Migration for departments table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.departments (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "img" TEXT,
    "department_name" TEXT,
    "hod" TEXT,
    "phone" TEXT,
    "email" TEXT,
    "student_capacity" TEXT,
    "established_year" TEXT,
    "total_faculty" TEXT
);

INSERT INTO public.departments ("id", "img", "department_name", "hod", "phone", "email", "student_capacity", "established_year", "total_faculty") VALUES
('85000000-0000-0000-0000-000000000001', 'assets/images/user/user1.jpg', 'Computer Science', 'Dr. Alan Turing', '1234567890', 'turing@school.edu', '120', '2015', '15') ON CONFLICT DO NOTHING;

INSERT INTO public.departments ("id", "img", "department_name", "hod", "phone", "email", "student_capacity", "established_year", "total_faculty") VALUES
('85000000-0000-0000-0000-000000000002', 'assets/images/user/user2.jpg', 'Mathematics', 'Dr. Isaac Newton', '0987654321', 'newton@school.edu', '80', '2016', '10') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
