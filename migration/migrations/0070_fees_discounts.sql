-- Migration for fees_discounts table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.fees_discounts (
    "discount_id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "discount_type" TEXT,
    "discount_amount" DOUBLE PRECISION,
    "discount_percentage" DOUBLE PRECISION,
    "discount_code" TEXT,
    "start_date" TIMESTAMP,
    "end_date" TIMESTAMP,
    "applied_date" TIMESTAMP,
    "status" TEXT,
    "remarks" TEXT
);

INSERT INTO public.fees_discounts ("discount_id", "discount_type", "discount_amount", "discount_percentage", "discount_code", "start_date", "end_date", "applied_date", "status", "remarks") VALUES 
('11111111-1111-1111-1111-111111111111', 'Handicapped Discount', 20, 10, 'handicap-disc', '2024-01-01', '2024-12-31', '2024-01-15', 'Active', 'Awarded for 95%+ grade in previous year') ON CONFLICT DO NOTHING;

INSERT INTO public.fees_discounts ("discount_id", "discount_type", "discount_amount", "discount_percentage", "discount_code", "start_date", "end_date", "applied_date", "status", "remarks") VALUES 
('22222222-2222-2222-2222-222222222222', 'Sibling Discount', 30, 15, 'sibling-disc', '2024-02-01', '2024-12-31', '2024-02-10', 'Inactive', 'Two children enrolled in the same school') ON CONFLICT DO NOTHING;

INSERT INTO public.fees_discounts ("discount_id", "discount_type", "discount_amount", "discount_percentage", "discount_code", "start_date", "end_date", "applied_date", "status", "remarks") VALUES 
('33333333-3333-3333-3333-333333333333', 'Merit-Based Discount', 50, 25, 'merit-disc', '2024-03-01', '2024-12-31', '2024-03-05', 'Active', 'Awarded for achieving top scores in the school exams') ON CONFLICT DO NOTHING;

INSERT INTO public.fees_discounts ("discount_id", "discount_type", "discount_amount", "discount_percentage", "discount_code", "start_date", "end_date", "applied_date", "status", "remarks") VALUES 
('44444444-4444-4444-4444-444444444444', 'Financial Aid Discount', 100, 50, 'financial-aid-disc', '2024-01-01', '2024-12-31', '2024-01-10', 'Active', 'Based on family income verification') ON CONFLICT DO NOTHING;

INSERT INTO public.fees_discounts ("discount_id", "discount_type", "discount_amount", "discount_percentage", "discount_code", "start_date", "end_date", "applied_date", "status", "remarks") VALUES 
('55555555-5555-5555-5555-555555555555', 'Early Payment Discount', 20, 5, 'early-payment-disc', '2024-01-01', '2024-01-31', '2024-01-05', 'Inactive', 'Discount for paying the annual fee before the due date') ON CONFLICT DO NOTHING;

INSERT INTO public.fees_discounts ("discount_id", "discount_type", "discount_amount", "discount_percentage", "discount_code", "start_date", "end_date", "applied_date", "status", "remarks") VALUES 
('66666666-6666-6666-6666-666666666666', 'Scholarship Discount', 200, 40, 'scholarship-disc', '2024-04-01', '2024-12-31', '2024-04-10', 'Active', 'Awarded based on academic excellence') ON CONFLICT DO NOTHING;

INSERT INTO public.fees_discounts ("discount_id", "discount_type", "discount_amount", "discount_percentage", "discount_code", "start_date", "end_date", "applied_date", "status", "remarks") VALUES 
('77777777-7777-7777-7777-777777777777', 'Staff Discount', 150, 20, 'staff-disc', '2024-01-01', '2024-12-31', '2024-01-20', 'Active', 'Discount for children of school staff members') ON CONFLICT DO NOTHING;

INSERT INTO public.fees_discounts ("discount_id", "discount_type", "discount_amount", "discount_percentage", "discount_code", "start_date", "end_date", "applied_date", "status", "remarks") VALUES 
('88888888-8888-8888-8888-888888888888', 'Sports Discount', 75, 10, 'sports-disc', '2024-02-01', '2024-12-31', '2024-02-15', 'Inactive', 'Awarded to students involved in competitive sports') ON CONFLICT DO NOTHING;

INSERT INTO public.fees_discounts ("discount_id", "discount_type", "discount_amount", "discount_percentage", "discount_code", "start_date", "end_date", "applied_date", "status", "remarks") VALUES 
('99999999-9999-9999-9999-999999999999', 'Extracurricular Discount', 50, 10, 'extracurricular-disc', '2024-03-01', '2024-12-31', '2024-03-05', 'Active', 'Discount for students participating in school clubs or activities') ON CONFLICT DO NOTHING;

INSERT INTO public.fees_discounts ("discount_id", "discount_type", "discount_amount", "discount_percentage", "discount_code", "start_date", "end_date", "applied_date", "status", "remarks") VALUES 
('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'Alumni Discount', 100, 25, 'alumni-disc', '2024-01-01', '2024-12-31', '2024-01-15', 'Active', 'Discount for children of school alumni') ON CONFLICT DO NOTHING;

INSERT INTO public.fees_discounts ("discount_id", "discount_type", "discount_amount", "discount_percentage", "discount_code", "start_date", "end_date", "applied_date", "status", "remarks") VALUES 
('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'Government Subsidy Discount', 150, 30, 'gov-subsidy-disc', '2024-01-01', '2024-12-31', '2024-01-25', 'Inactive', 'Discount based on government support for low-income families') ON CONFLICT DO NOTHING;

INSERT INTO public.fees_discounts ("discount_id", "discount_type", "discount_amount", "discount_percentage", "discount_code", "start_date", "end_date", "applied_date", "status", "remarks") VALUES 
('cccccccc-cccc-cccc-cccc-cccccccccccc', 'Referral Discount', 50, 5, 'referral-disc', '2024-02-01', '2024-12-31', '2024-02-15', 'Active', 'Discount for referring a new student to the school') ON CONFLICT DO NOTHING;

INSERT INTO public.fees_discounts ("discount_id", "discount_type", "discount_amount", "discount_percentage", "discount_code", "start_date", "end_date", "applied_date", "status", "remarks") VALUES 
('dddddddd-dddd-dddd-dddd-dddddddddddd', 'Festival Discount', 40, 8, 'festival-disc', '2024-10-01', '2024-12-31', '2024-10-05', 'Active', 'Discount offered during the festive season') ON CONFLICT DO NOTHING;

INSERT INTO public.fees_discounts ("discount_id", "discount_type", "discount_amount", "discount_percentage", "discount_code", "start_date", "end_date", "applied_date", "status", "remarks") VALUES 
('eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee', 'Single Payment Discount', 150, 15, 'single-payment-disc', '2024-01-01', '2024-12-31', '2024-01-10', 'Inactive', 'Discount for paying the full fee in one installment') ON CONFLICT DO NOTHING;

INSERT INTO public.fees_discounts ("discount_id", "discount_type", "discount_amount", "discount_percentage", "discount_code", "start_date", "end_date", "applied_date", "status", "remarks") VALUES 
('ffffffff-ffff-ffff-ffff-ffffffffffff', 'First-Time Enrollment Discount', 100, 10, 'first-time-disc', '2024-01-01', '2024-12-31', '2024-01-15', 'Active', 'Discount for students enrolling in the school for the first time') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
