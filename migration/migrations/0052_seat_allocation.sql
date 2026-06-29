-- Migration for seat_allocations table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.seat_allocations (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "student_name" TEXT,
    "application_no" TEXT UNIQUE NOT NULL,
    "course" TEXT,
    "category" TEXT,
    "allotted_seat_type" TEXT,
    "allocation_date" TIMESTAMP,
    "reporting_date" TIMESTAMP,
    "status" TEXT,
    "fees_paid" BOOLEAN
);

INSERT INTO public.seat_allocations ("id", "student_name", "application_no", "course", "category", "allotted_seat_type", "allocation_date", "reporting_date", "status", "fees_paid") VALUES
('9ea88778-d567-4638-b7ab-0f7962451f51', 'John Doe', 'APP001', 'Computer Science', 'General', 'Merit', '2024-06-15', '2024-06-20', 'Confirmed', true),
('6ea9bf02-e254-47ad-8ef0-df6a4401df52', 'Jane Smith', 'APP002', 'Computer Science', 'OBC', 'Merit', '2024-06-15', '2024-06-20', 'Pending', false),
('b0fbe937-2cf3-4c91-a1e6-df06a735c253', 'Mike Ross', 'APP003', 'Law', 'General', 'Management', '2024-06-16', '2024-06-21', 'Confirmed', true),
('da741a31-15c9-4b62-bbbe-e28a6fcf7854', 'Rachel Zane', 'APP004', 'Law', 'SC', 'Reserved', '2024-06-16', '2024-06-21', 'Cancelled', false),
('e3b1c672-8f96-419b-bf72-8e1216afb755', 'Harvey Specter', 'APP005', 'Economics', 'General', 'Merit', '2024-06-17', '2024-06-22', 'Confirmed', true),
('8d51ca21-bf96-41ab-bc72-8c11e7af1856', 'Donna Paulsen', 'APP006', 'Management', 'General', 'Merit', '2024-06-17', '2024-06-22', 'Confirmed', true),
('f05a9cde-bcda-411a-8cbe-e75294bc1857', 'Louis Litt', 'APP007', 'Finance', 'General', 'Merit', '2024-06-18', '2024-06-23', 'Pending', false),
('5cfa7bcd-e254-47f3-8efd-c78216afde58', 'Jessica Pearson', 'APP008', 'Political Science', 'General', 'Merit', '2024-06-18', '2024-06-23', 'Confirmed', true),
('acda6f23-cfd0-4bf3-ae7d-e7f016afd259', 'Oliver Queen', 'APP009', 'Mechanical Eng', 'ST', 'Reserved', '2024-06-19', '2024-06-24', 'Confirmed', true),
('e3cbfd72-adcf-41ab-ae7d-d1296bfd3150', 'Barry Allen', 'APP010', 'Physics', 'OBC', 'Merit', '2024-06-19', '2024-06-24', 'Confirmed', true)
ON CONFLICT DO NOTHING;
SET session_replication_role = 'origin';
