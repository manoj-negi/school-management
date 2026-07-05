-- Migration for fee_reports table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.fee_reports (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "img" TEXT,
    "report_type" TEXT,
    "fee_category" TEXT,
    "date_from" TIMESTAMP,
    "date_to" TIMESTAMP,
    "total_amount" NUMERIC,
    "generated_by" TEXT,
    "date" TIMESTAMP,
    "status" TEXT
);

INSERT INTO public.fee_reports ("id", "img", "report_type", "fee_category", "date_from", "date_to", "total_amount", "generated_by", "date", "status") VALUES
('88000000-0000-0000-0000-000000000001', 'assets/images/user/user1.jpg', 'Fee Collection', 'Tuition Fee', '2024-11-01 00:00:00', '2024-11-30 00:00:00', 450000.00, 'John Doe', '2024-12-01 00:00:00', 'Completed') ON CONFLICT DO NOTHING;

INSERT INTO public.fee_reports ("id", "img", "report_type", "fee_category", "date_from", "date_to", "total_amount", "generated_by", "date", "status") VALUES
('88000000-0000-0000-0000-000000000002', 'assets/images/user/user2.jpg', 'Due Fees', 'Hostel Fee', '2024-12-01 00:00:00', '2024-12-07 00:00:00', 125000.00, 'Sarah Smith', '2024-12-08 00:00:00', 'Completed') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
