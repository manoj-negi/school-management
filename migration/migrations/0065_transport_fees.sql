-- Migration for transport_fees table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.transport_fees (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "student_name" TEXT,
    "student_id" TEXT,
    "class_section" TEXT,
    "route_name" TEXT,
    "amount" TEXT,
    "payment_date" TIMESTAMP,
    "payment_method" TEXT,
    "status" TEXT,
    "img" TEXT
);

INSERT INTO public.transport_fees ("id", "student_name", "student_id", "class_section", "route_name", "amount", "payment_date", "payment_method", "status", "img") VALUES 
('11111111-1111-1111-1111-111111111111', 'Alice Johnson', 'STU001', '10-A', 'North Campus - Main Gate', '500', '2023-09-01', 'Online', 'Paid', 'assets/images/user/user1.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.transport_fees ("id", "student_name", "student_id", "class_section", "route_name", "amount", "payment_date", "payment_method", "status", "img") VALUES 
('22222222-2222-2222-2222-222222222222', 'Bob Smith', 'STU002', '9-B', 'City Center - South Block', '1200', '2023-09-02', 'Cash', 'Paid', 'assets/images/user/user2.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.transport_fees ("id", "student_name", "student_id", "class_section", "route_name", "amount", "payment_date", "payment_method", "status", "img") VALUES 
('33333333-3333-3333-3333-333333333333', 'Charlie Brown', 'STU003', '11-C', 'Airport Road - Science Wing', '1500', '2023-09-03', 'Online', 'Unpaid', 'assets/images/user/user3.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.transport_fees ("id", "student_name", "student_id", "class_section", "route_name", "amount", "payment_date", "payment_method", "status", "img") VALUES 
('44444444-4444-4444-4444-444444444444', 'Diana Prince', 'STU004', '8-A', 'Green Valley - Arts College', '800', '2023-09-04', 'Card', 'Paid', 'assets/images/user/user4.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.transport_fees ("id", "student_name", "student_id", "class_section", "route_name", "amount", "payment_date", "payment_method", "status", "img") VALUES 
('55555555-5555-5555-5555-555555555555', 'Ethan Hunt', 'STU005', '12-B', 'Railway Station - Hostel Block', '1000', '2023-09-05', 'Online', 'Paid', 'assets/images/user/user5.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.transport_fees ("id", "student_name", "student_id", "class_section", "route_name", "amount", "payment_date", "payment_method", "status", "img") VALUES 
('66666666-6666-6666-6666-666666666666', 'Fiona Gallagher', 'STU006', '10-B', 'East Suburb - Library', '2000', '2023-09-06', 'Cash', 'Paid', 'assets/images/user/user6.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.transport_fees ("id", "student_name", "student_id", "class_section", "route_name", "amount", "payment_date", "payment_method", "status", "img") VALUES 
('77777777-7777-7777-7777-777777777777', 'George Miller', 'STU007', '7-C', 'West End - Sports Complex', '1800', '2023-09-07', 'Online', 'Paid', 'assets/images/user/user7.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.transport_fees ("id", "student_name", "student_id", "class_section", "route_name", "amount", "payment_date", "payment_method", "status", "img") VALUES 
('88888888-8888-8888-8888-888888888888', 'Hannah Abbott', 'STU008', '11-A', 'Hill Top - Medical Center', '2500', '2023-09-08', 'Card', 'Paid', 'assets/images/user/user8.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.transport_fees ("id", "student_name", "student_id", "class_section", "route_name", "amount", "payment_date", "payment_method", "status", "img") VALUES 
('99999999-9999-9999-9999-999999999999', 'Ian Wright', 'STU009', '9-A', 'Market Square - Admin Block', '600', '2023-09-09', 'Online', 'Unpaid', 'assets/images/user/user9.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.transport_fees ("id", "student_name", "student_id", "class_section", "route_name", "amount", "payment_date", "payment_method", "status", "img") VALUES 
('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'Julia Roberts', 'STU010', '12-A', 'Lake Side - Engineering Wing', '1400', '2023-09-10', 'Cash', 'Paid', 'assets/images/user/user10.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.transport_fees ("id", "student_name", "student_id", "class_section", "route_name", "amount", "payment_date", "payment_method", "status", "img") VALUES 
('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'Kevin Hart', 'STU011', '8-B', 'Central Plaza - IT Center', '700', '2023-09-11', 'Online', 'Paid', 'assets/images/user/user11.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.transport_fees ("id", "student_name", "student_id", "class_section", "route_name", "amount", "payment_date", "payment_method", "status", "img") VALUES 
('cccccccc-cccc-cccc-cccc-cccccccccccc', 'Laura Palmer', 'STU012', '10-C', 'Old Town - PG Hostel', '1100', '2023-09-12', 'Card', 'Paid', 'assets/images/user/user6.jpg') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
