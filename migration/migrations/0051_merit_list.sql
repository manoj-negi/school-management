-- Migration for merit_lists table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.merit_lists (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "student_name" TEXT,
    "application_no" TEXT UNIQUE NOT NULL,
    "category" TEXT,
    "entrance_score" NUMERIC,
    "academic_score" NUMERIC,
    "total_score" NUMERIC,
    "rank" INTEGER,
    "course" TEXT,
    "selection_status" TEXT
);

INSERT INTO public.merit_lists ("id", "student_name", "application_no", "category", "entrance_score", "academic_score", "total_score", "rank", "course", "selection_status") VALUES
('9da88778-d567-4638-b7ab-0f7962451f51', 'John Doe', 'APP001', 'General', 85, 90, 175, 1, 'Computer Science', 'Selected'),
('6da9bf02-e254-47ad-8ef0-df6a4401df52', 'Jane Smith', 'APP002', 'OBC', 82, 88, 170, 2, 'Computer Science', 'Selected'),
('b0fbe937-2cf3-4c91-a1e6-df06a735c253', 'Mike Ross', 'APP003', 'General', 80, 85, 165, 3, 'Law', 'Selected'),
('da741a31-15c9-4b62-bbbe-e28a6fcf7854', 'Rachel Zane', 'APP004', 'SC', 78, 82, 160, 4, 'Law', 'Waiting'),
('e3b1c672-8f96-419b-bf72-8e1216afb755', 'Harvey Specter', 'APP005', 'General', 90, 95, 185, 1, 'Economics', 'Selected'),
('8d51ca21-bf96-41ab-bc72-8c11e7af1856', 'Donna Paulsen', 'APP006', 'General', 88, 92, 180, 2, 'Management', 'Selected'),
('f05a9cde-bcda-411a-8cbe-e75294bc1857', 'Louis Litt', 'APP007', 'General', 75, 80, 155, 10, 'Finance', 'Waiting'),
('5cfa7bcd-e254-47f3-8efd-c78216afde58', 'Jessica Pearson', 'APP008', 'General', 92, 96, 188, 1, 'Political Science', 'Selected'),
('acda6f23-cfd0-4bf3-ae7d-e7f016afd259', 'Oliver Queen', 'APP009', 'ST', 70, 75, 145, 5, 'Mechanical Eng', 'Selected'),
('e3cbfd72-adcf-41ab-ae7d-d1296bfd3150', 'Barry Allen', 'APP010', 'OBC', 86, 89, 175, 1, 'Physics', 'Selected')
ON CONFLICT DO NOTHING;
SET session_replication_role = 'origin';
