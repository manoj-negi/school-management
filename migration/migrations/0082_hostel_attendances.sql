-- Migration for hostel_attendances table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.hostel_attendances (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "img" TEXT,
    "student_name" TEXT,
    "roll_no" TEXT,
    "hostel_name" TEXT,
    "room_no" TEXT,
    "attendance_date" TIMESTAMP,
    "status" TEXT,
    "note" TEXT
);

INSERT INTO public.hostel_attendances ("id", "img", "student_name", "roll_no", "hostel_name", "room_no", "attendance_date", "status", "note") VALUES
('83000000-0000-0000-0000-000000000001', 'assets/images/user/user1.jpg', 'John Doe', '101', 'Sunrise Hostel', '101', '2025-01-20 00:00:00', 'Present', 'On time') ON CONFLICT DO NOTHING;

INSERT INTO public.hostel_attendances ("id", "img", "student_name", "roll_no", "hostel_name", "room_no", "attendance_date", "status", "note") VALUES
('83000000-0000-0000-0000-000000000002', 'assets/images/user/user2.jpg', 'Jane Smith', '102', 'Sunrise Hostel', '102', '2025-01-20 00:00:00', 'Absent', 'No notification') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
