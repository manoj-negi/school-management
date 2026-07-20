-- Migration for student hostel room details, hostel fees, and complaints management
SET session_replication_role = 'replica';

CREATE TABLE IF NOT EXISTS public.student_hostel_room_details (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "room_no" TEXT,
    "room_type" TEXT,
    "hostel_name" TEXT,
    "no_of_beds" INTEGER,
    "availability" TEXT,
    "rent" INTEGER
);

CREATE TABLE IF NOT EXISTS public.student_hostel_fees (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "invoice_no" TEXT,
    "room_no" TEXT,
    "hostel_name" TEXT,
    "fee_type" TEXT,
    "amount" INTEGER,
    "date" TEXT,
    "payment_status" TEXT
);

CREATE TABLE IF NOT EXISTS public.student_hostel_complaints (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "complaint_title" TEXT,
    "complaint_type" TEXT,
    "date" TEXT,
    "description" TEXT,
    "status" TEXT
);

-- Seed initial mock values
INSERT INTO public.student_hostel_room_details ("id", "room_no", "room_type", "hostel_name", "no_of_beds", "availability", "rent") VALUES
('9a100000-0000-0000-0000-000000000001', 'H1-101', 'AC', 'Boys Hostel A', 2, 'Available', 5000),
('9a100000-0000-0000-0000-000000000002', 'H1-102', 'Non-AC', 'Boys Hostel A', 3, 'Full', 3500) ON CONFLICT DO NOTHING;

INSERT INTO public.student_hostel_fees ("id", "invoice_no", "room_no", "hostel_name", "fee_type", "amount", "date", "payment_status") VALUES
('9a200000-0000-0000-0000-000000000001', 'INV-H001', 'H1-101', 'Boys Hostel A', 'Room Rent', 5000, '2025-01-05', 'Paid'),
('9a200000-0000-0000-0000-000000000002', 'INV-H003', 'H1-102', 'Boys Hostel A', 'Room Rent', 3500, '2025-01-10', 'Unpaid') ON CONFLICT DO NOTHING;

INSERT INTO public.student_hostel_complaints ("id", "complaint_title", "complaint_type", "date", "description", "status") VALUES
('9a300000-0000-0000-0000-000000000001', 'Fan Not Working', 'Electrical', '2025-01-10', 'The fan in room H1-101 is not working properly.', 'Pending'),
('9a300000-0000-0000-0000-000000000002', 'Water Leakage', 'Plumbing', '2025-01-12', 'There is a water leakage in the bathroom of room H2-201.', 'Resolved') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
