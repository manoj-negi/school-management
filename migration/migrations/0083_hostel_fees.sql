-- Migration for hostel_fees table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.hostel_fees (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "img" TEXT,
    "student_name" TEXT,
    "roll_no" TEXT,
    "hostel_name" TEXT,
    "room_no" TEXT,
    "fee_type" TEXT,
    "amount" NUMERIC,
    "payment_date" TIMESTAMP,
    "payment_status" TEXT
);

INSERT INTO public.hostel_fees ("id", "img", "student_name", "roll_no", "hostel_name", "room_no", "fee_type", "amount", "payment_date", "payment_status") VALUES
('84000000-0000-0000-0000-000000000001', 'assets/images/user/user1.jpg', 'John Doe', '101', 'Sunrise Hostel', '101', 'Monthly', 1500.00, '2025-01-05 00:00:00', 'Paid') ON CONFLICT DO NOTHING;

INSERT INTO public.hostel_fees ("id", "img", "student_name", "roll_no", "hostel_name", "room_no", "fee_type", "amount", "payment_date", "payment_status") VALUES
('84000000-0000-0000-0000-000000000002', 'assets/images/user/user2.jpg', 'Jane Smith', '102', 'Sunrise Hostel', '102', 'Monthly', 1500.00, '2025-01-06 00:00:00', 'Unpaid') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
