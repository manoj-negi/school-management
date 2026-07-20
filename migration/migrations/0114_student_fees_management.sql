-- Migration for student fee receipts, due fees, fee details, and online payment transaction records
SET session_replication_role = 'replica';

CREATE TABLE IF NOT EXISTS public.student_fee_receipts (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "receipt_no" TEXT,
    "fee_type" TEXT,
    "payment_date" TEXT,
    "paid_amount" INTEGER,
    "payment_mode" TEXT,
    "status" TEXT
);

CREATE TABLE IF NOT EXISTS public.student_due_fees (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "fee_type" TEXT,
    "due_date" TEXT,
    "total_amount" INTEGER,
    "due_amount" INTEGER,
    "late_fee" INTEGER,
    "total_due" INTEGER
);

CREATE TABLE IF NOT EXISTS public.student_fee_details (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "fee_type" TEXT,
    "due_date" TEXT,
    "amount" INTEGER,
    "paid_amount" INTEGER,
    "balance_amount" INTEGER,
    "status" TEXT,
    "payment_method" TEXT
);

CREATE TABLE IF NOT EXISTS public.student_online_payments (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "transaction_id" TEXT,
    "fee_type" TEXT,
    "payment_date" TEXT,
    "amount" INTEGER,
    "payment_gateway" TEXT,
    "status" TEXT
);

-- Seed initial mock values
INSERT INTO public.student_fee_receipts ("id", "receipt_no", "fee_type", "payment_date", "paid_amount", "payment_mode", "status") VALUES
('9f800000-0000-0000-0000-000000000001', 'RCP-2025-001', 'Tuition Fee', '2025-01-10', 5000, 'Cash', 'Success'),
('9f800000-0000-0000-0000-000000000002', 'RCP-2025-002', 'Library Fee', '2025-01-12', 500, 'Online', 'Success') ON CONFLICT DO NOTHING;

INSERT INTO public.student_due_fees ("id", "fee_type", "due_date", "total_amount", "due_amount", "late_fee", "total_due") VALUES
('9f900000-0000-0000-0000-000000000001', 'Exam Fee', '2025-02-15', 1000, 1000, 0, 1000),
('9f900000-0000-0000-0000-000000000002', 'Sports Fee', '2025-04-10', 300, 300, 0, 300) ON CONFLICT DO NOTHING;

INSERT INTO public.student_fee_details ("id", "fee_type", "due_date", "amount", "paid_amount", "balance_amount", "status", "payment_method") VALUES
('9fa00000-0000-0000-0000-000000000001', 'Tuition Fee', '2025-01-10', 5000, 5000, 0, 'Paid', 'Online'),
('9fa00000-0000-0000-0000-000000000002', 'Exam Fee', '2025-02-15', 1000, 0, 1000, 'Unpaid', '-') ON CONFLICT DO NOTHING;

INSERT INTO public.student_online_payments ("id", "transaction_id", "fee_type", "payment_date", "amount", "payment_gateway", "status") VALUES
('9fb00000-0000-0000-0000-000000000001', 'TXN-782341', 'Tuition Fee', '2025-01-08', 5000, 'Stripe', 'Success'),
('9fb00000-0000-0000-0000-000000000002', 'TXN-782342', 'Library Fee', '2025-01-15', 500, 'PayPal', 'Success') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
