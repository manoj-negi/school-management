-- Migration for entrance_exams table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.entrance_exams (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "exam_name" TEXT,
    "exam_code" TEXT UNIQUE NOT NULL,
    "exam_date" TIMESTAMP,
    "start_time" TEXT,
    "end_time" TEXT,
    "venue" TEXT,
    "max_marks" INTEGER,
    "passing_marks" INTEGER,
    "status" TEXT,
    "description" TEXT
);

INSERT INTO public.entrance_exams ("id", "exam_name", "exam_code", "exam_date", "start_time", "end_time", "venue", "max_marks", "passing_marks", "status", "description") VALUES
('9ca88778-d567-4638-b7ab-0f7962451f51', 'CS Entrance 2024', 'CSE101', '2024-05-10', '10:00 AM', '01:00 PM', 'Hall A', 100, 40, 'Scheduled', 'Entrance for CS Department'),
('6ca9bf02-e254-47ad-8ef0-df6a4401df52', 'MBA Entrance 2024', 'MBA202', '2024-05-12', '02:00 PM', '05:00 PM', 'Hall B', 100, 50, 'Scheduled', 'Entrance for Management'),
('b0fbe937-2cf3-4c91-a1e6-df06a735c253', 'Law Entrance 2024', 'LAW303', '2024-05-15', '09:00 AM', '12:00 PM', 'Hall C', 150, 75, 'Completed', 'Entrance for Law School'),
('da741a31-15c9-4b62-bbbe-e28a6fcf7854', 'Eng Entrance 2024', 'ENG404', '2024-05-18', '10:00 AM', '01:00 PM', 'Hall A', 120, 60, 'Cancelled', 'Entrance for Engineering'),
('e3b1c672-8f96-419b-bf72-8e1216afb755', 'Med Entrance 2024', 'MED505', '2024-05-20', '02:00 PM', '05:00 PM', 'Main Lab', 200, 100, 'Scheduled', 'Entrance for Medical Science')
ON CONFLICT DO NOTHING;
SET session_replication_role = 'origin';
