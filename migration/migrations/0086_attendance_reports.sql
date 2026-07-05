-- Migration for attendance_reports table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.attendance_reports (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "img" TEXT,
    "report_type" TEXT,
    "class_name" TEXT,
    "date_from" TIMESTAMP,
    "date_to" TIMESTAMP,
    "attendance_percentage" NUMERIC,
    "generated_by" TEXT,
    "date" TIMESTAMP,
    "status" TEXT
);

INSERT INTO public.attendance_reports ("id", "img", "report_type", "class_name", "date_from", "date_to", "attendance_percentage", "generated_by", "date", "status") VALUES
('87000000-0000-0000-0000-000000000001', 'assets/images/user/user1.jpg', 'Monthly Attendance', 'Class 10-A', '2024-11-01 00:00:00', '2024-11-30 00:00:00', 95.50, 'John Doe', '2024-12-01 00:00:00', 'Completed') ON CONFLICT DO NOTHING;

INSERT INTO public.attendance_reports ("id", "img", "report_type", "class_name", "date_from", "date_to", "attendance_percentage", "generated_by", "date", "status") VALUES
('87000000-0000-0000-0000-000000000002', 'assets/images/user/user2.jpg', 'Weekly Attendance', 'Class 9-B', '2024-12-01 00:00:00', '2024-12-07 00:00:00', 92.00, 'Sarah Smith', '2024-12-08 00:00:00', 'Completed') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
