-- Migration for all_fees table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.all_fees (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "roll_no" TEXT,
    "student_name" TEXT,
    "class" TEXT,
    "fees_type" TEXT,
    "invoice_no" TEXT,
    "payment_due_date" TIMESTAMP,
    "payment_date" TIMESTAMP,
    "payment_type" TEXT,
    "status" TEXT,
    "amount" TEXT,
    "late_fee" TEXT,
    "discount" TEXT,
    "created_at" TIMESTAMP,
    "updated_at" TIMESTAMP,
    "notes" TEXT
);

INSERT INTO public.all_fees ("id", "roll_no", "student_name", "class", "fees_type", "invoice_no", "payment_due_date", "payment_date", "payment_type", "status", "amount", "late_fee", "discount", "created_at", "updated_at", "notes") VALUES 
('11111111-1111-1111-1111-111111111111', '1', 'Jenish Shah', '10th Grade', 'library', 'IN-5645644', '2019-03-01', NULL, '', 'pending', '170$', '0$', '0$', '2019-02-25', '2019-02-25', 'N/A') ON CONFLICT DO NOTHING;

INSERT INTO public.all_fees ("id", "roll_no", "student_name", "class", "fees_type", "invoice_no", "payment_due_date", "payment_date", "payment_type", "status", "amount", "late_fee", "discount", "created_at", "updated_at", "notes") VALUES 
('22222222-2222-2222-2222-222222222222', '2', 'Priya Patel', '11th Grade', 'annual', 'IN-5645644', '2019-03-01', NULL, '', 'pending', '170$', '0$', '0$', '2019-02-17', '2019-02-17', 'N/A') ON CONFLICT DO NOTHING;

INSERT INTO public.all_fees ("id", "roll_no", "student_name", "class", "fees_type", "invoice_no", "payment_due_date", "payment_date", "payment_type", "status", "amount", "late_fee", "discount", "created_at", "updated_at", "notes") VALUES 
('33333333-3333-3333-3333-333333333333', '3', 'Mayank Jani', '7th Grade', 'other', 'IN-5645644', '2020-01-01', NULL, '', 'pending', '250$', '0$', '0$', '2020-01-01', '2020-01-01', 'N/A') ON CONFLICT DO NOTHING;

INSERT INTO public.all_fees ("id", "roll_no", "student_name", "class", "fees_type", "invoice_no", "payment_due_date", "payment_date", "payment_type", "status", "amount", "late_fee", "discount", "created_at", "updated_at", "notes") VALUES 
('44444444-4444-4444-4444-444444444444', '4', 'Bertie Jones', '8th Grade', 'annual', 'IN-5645644', '2019-03-01', '2019-02-10', 'cheque', 'paid', '340$', '0$', '0$', '2019-02-01', '2019-02-01', 'N/A') ON CONFLICT DO NOTHING;

INSERT INTO public.all_fees ("id", "roll_no", "student_name", "class", "fees_type", "invoice_no", "payment_due_date", "payment_date", "payment_type", "status", "amount", "late_fee", "discount", "created_at", "updated_at", "notes") VALUES 
('55555555-5555-5555-5555-555555555555', '5', 'Jenish Shah', '9th Grade', 'transport', 'IN-5645644', '2019-03-01', '2019-02-10', 'credit card', 'paid', '170$', '0$', '0$', '2019-02-02', '2019-02-02', 'N/A') ON CONFLICT DO NOTHING;

INSERT INTO public.all_fees ("id", "roll_no", "student_name", "class", "fees_type", "invoice_no", "payment_due_date", "payment_date", "payment_type", "status", "amount", "late_fee", "discount", "created_at", "updated_at", "notes") VALUES 
('66666666-6666-6666-6666-666666666666', '6', 'Sarah Smith', '11th Grade', 'exam', 'IN-5645644', '2019-03-01', '2019-02-10', 'cash', 'paid', '340$', '0$', '0$', '2019-02-26', '2019-02-26', 'N/A') ON CONFLICT DO NOTHING;

INSERT INTO public.all_fees ("id", "roll_no", "student_name", "class", "fees_type", "invoice_no", "payment_due_date", "payment_date", "payment_type", "status", "amount", "late_fee", "discount", "created_at", "updated_at", "notes") VALUES 
('77777777-7777-7777-7777-777777777777', '7', 'Pam Abbott', '7th Grade', 'tuition', 'IN-5645644', '2019-03-01', NULL, '', 'pending', '340$', '0$', '0$', '2019-02-22', '2019-02-22', 'N/A') ON CONFLICT DO NOTHING;

INSERT INTO public.all_fees ("id", "roll_no", "student_name", "class", "fees_type", "invoice_no", "payment_due_date", "payment_date", "payment_type", "status", "amount", "late_fee", "discount", "created_at", "updated_at", "notes") VALUES 
('88888888-8888-8888-8888-888888888888', '8', 'Bethaney Spence', '8th Grade', 'library', 'IN-5645644', '2019-03-01', '2019-02-10', 'credit card', 'paid', '250$', '0$', '0$', '2019-02-19', '2019-02-19', 'N/A') ON CONFLICT DO NOTHING;

INSERT INTO public.all_fees ("id", "roll_no", "student_name", "class", "fees_type", "invoice_no", "payment_due_date", "payment_date", "payment_type", "status", "amount", "late_fee", "discount", "created_at", "updated_at", "notes") VALUES 
('99999999-9999-9999-9999-999999999999', '9', 'Ivan Bell', '11th Grade', 'transport', 'IN-5645644', '2019-03-01', NULL, '', 'pending', '170$', '0$', '0$', '2019-02-14', '2019-02-14', 'N/A') ON CONFLICT DO NOTHING;

INSERT INTO public.all_fees ("id", "roll_no", "student_name", "class", "fees_type", "invoice_no", "payment_due_date", "payment_date", "payment_type", "status", "amount", "late_fee", "discount", "created_at", "updated_at", "notes") VALUES 
('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '10', 'Jay Soni', '9th Grade', 'tuition', 'IN-5645644', '2019-03-01', '2019-02-10', 'credit card', 'paid', '340$', '0$', '0$', '2019-02-27', '2019-02-27', 'N/A') ON CONFLICT DO NOTHING;

INSERT INTO public.all_fees ("id", "roll_no", "student_name", "class", "fees_type", "invoice_no", "payment_due_date", "payment_date", "payment_type", "status", "amount", "late_fee", "discount", "created_at", "updated_at", "notes") VALUES 
('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '11', 'Wesley Casey', '9th Grade', 'annual', 'IN-5645644', '2019-03-01', NULL, '', 'pending', '340$', '0$', '0$', '2019-02-21', '2019-02-21', 'N/A') ON CONFLICT DO NOTHING;

INSERT INTO public.all_fees ("id", "roll_no", "student_name", "class", "fees_type", "invoice_no", "payment_due_date", "payment_date", "payment_type", "status", "amount", "late_fee", "discount", "created_at", "updated_at", "notes") VALUES 
('cccccccc-cccc-cccc-cccc-cccccccccccc', '12', 'Robin Graves', '11th Grade', 'exam', 'IN-5645644', '2019-03-01', '2019-02-10', 'cheque', 'paid', '340$', '0$', '0$', '2019-02-10', '2019-02-10', 'N/A') ON CONFLICT DO NOTHING;

INSERT INTO public.all_fees ("id", "roll_no", "student_name", "class", "fees_type", "invoice_no", "payment_due_date", "payment_date", "payment_type", "status", "amount", "late_fee", "discount", "created_at", "updated_at", "notes") VALUES 
('dddddddd-dddd-dddd-dddd-dddddddddddd', '13', 'Ivan Bell', '6th Grade', 'tuition', 'IN-5645644', '2019-03-01', NULL, '', 'pending', '170$', '0$', '0$', '2019-02-10', '2019-02-10', 'N/A') ON CONFLICT DO NOTHING;

INSERT INTO public.all_fees ("id", "roll_no", "student_name", "class", "fees_type", "invoice_no", "payment_due_date", "payment_date", "payment_type", "status", "amount", "late_fee", "discount", "created_at", "updated_at", "notes") VALUES 
('eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee', '14', 'Justin Copeland', '8th Grade', 'transport', 'IN-5645644', '2019-03-01', NULL, '', 'pending', '250$', '0$', '0$', '2019-02-16', '2019-02-16', 'N/A') ON CONFLICT DO NOTHING;

INSERT INTO public.all_fees ("id", "roll_no", "student_name", "class", "fees_type", "invoice_no", "payment_due_date", "payment_date", "payment_type", "status", "amount", "late_fee", "discount", "created_at", "updated_at", "notes") VALUES 
('ffffffff-ffff-ffff-ffff-ffffffffffff', '15', 'Kendra King', '9th Grade', 'tuition', 'IN-5645644', '2019-03-01', '2019-02-10', 'online transfer', 'paid', '340$', '0$', '0$', '2019-02-04', '2019-02-04', 'N/A') ON CONFLICT DO NOTHING;

INSERT INTO public.all_fees ("id", "roll_no", "student_name", "class", "fees_type", "invoice_no", "payment_due_date", "payment_date", "payment_type", "status", "amount", "late_fee", "discount", "created_at", "updated_at", "notes") VALUES 
('00000000-0000-0000-0000-000000000000', '16', 'Alexandra Clarke', '6th Grade', 'annual', 'IN-5645644', '2019-03-01', '2019-02-10', 'cash', 'paid', '340$', '0$', '0$', '2019-02-04', '2019-02-04', 'N/A') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
