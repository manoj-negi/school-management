-- Migration for hostel_allocations table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.hostel_allocations (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "img" TEXT,
    "student_name" TEXT,
    "roll_no" TEXT,
    "hostel_name" TEXT,
    "room_no" TEXT,
    "room_type" TEXT,
    "allocation_date" TIMESTAMP,
    "status" TEXT
);

INSERT INTO public.hostel_allocations ("id", "img", "student_name", "roll_no", "hostel_name", "room_no", "room_type", "allocation_date", "status") VALUES
('82000000-0000-0000-0000-000000000001', 'assets/images/user/user1.jpg', 'John Doe', 'STU001', 'Sunrise Hostel', '101', 'Single', '2025-01-10 00:00:00', 'Active') ON CONFLICT DO NOTHING;

INSERT INTO public.hostel_allocations ("id", "img", "student_name", "roll_no", "hostel_name", "room_no", "room_type", "allocation_date", "status") VALUES
('82000000-0000-0000-0000-000000000002', 'assets/images/user/user2.jpg', 'Jane Smith', 'STU002', 'Sunrise Hostel', '102', 'Double', '2025-01-12 00:00:00', 'Active') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
