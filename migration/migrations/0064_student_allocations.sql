-- Migration for student_allocations table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.student_allocations (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "student_name" TEXT,
    "student_id" TEXT,
    "class_section" TEXT,
    "route_name" TEXT,
    "vehicle_no" TEXT,
    "stop_point" TEXT,
    "allocation_date" TIMESTAMP,
    "status" TEXT,
    "img" TEXT
);

INSERT INTO public.student_allocations ("id", "student_name", "student_id", "class_section", "route_name", "vehicle_no", "stop_point", "allocation_date", "status", "img") VALUES 
('11111111-1111-1111-1111-111111111111', 'Alice Johnson', 'STU001', '10-A', 'North Campus - Main Gate', 'VH-2021-001', 'Blue Circle', '2023-08-15', 'Active', 'assets/images/user/user1.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.student_allocations ("id", "student_name", "student_id", "class_section", "route_name", "vehicle_no", "stop_point", "allocation_date", "status", "img") VALUES 
('22222222-2222-2222-2222-222222222222', 'Bob Smith', 'STU002', '9-B', 'City Center - South Block', 'VH-2020-002', 'Green Park', '2023-08-16', 'Active', 'assets/images/user/user2.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.student_allocations ("id", "student_name", "student_id", "class_section", "route_name", "vehicle_no", "stop_point", "allocation_date", "status", "img") VALUES 
('33333333-3333-3333-3333-333333333333', 'Charlie Brown', 'STU003', '11-C', 'Airport Road - Science Wing', 'VH-2019-003', 'Red Cross', '2023-08-17', 'Inactive', 'assets/images/user/user3.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.student_allocations ("id", "student_name", "student_id", "class_section", "route_name", "vehicle_no", "stop_point", "allocation_date", "status", "img") VALUES 
('44444444-4444-4444-4444-444444444444', 'Diana Prince', 'STU004', '8-A', 'Green Valley - Arts College', 'VH-2022-004', 'Yellow House', '2023-08-18', 'Active', 'assets/images/user/user4.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.student_allocations ("id", "student_name", "student_id", "class_section", "route_name", "vehicle_no", "stop_point", "allocation_date", "status", "img") VALUES 
('55555555-5555-5555-5555-555555555555', 'Ethan Hunt', 'STU005', '12-B', 'Railway Station - Hostel Block', 'VH-2021-005', 'Black Square', '2023-08-19', 'Active', 'assets/images/user/user5.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.student_allocations ("id", "student_name", "student_id", "class_section", "route_name", "vehicle_no", "stop_point", "allocation_date", "status", "img") VALUES 
('66666666-6666-6666-6666-666666666666', 'Fiona Gallagher', 'STU006', '10-B', 'East Suburb - Library', 'VH-2018-006', 'White Bridge', '2023-08-20', 'Active', 'assets/images/user/user6.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.student_allocations ("id", "student_name", "student_id", "class_section", "route_name", "vehicle_no", "stop_point", "allocation_date", "status", "img") VALUES 
('77777777-7777-7777-7777-777777777777', 'George Miller', 'STU007', '7-C', 'West End - Sports Complex', 'VH-2023-007', 'Silver Road', '2023-08-21', 'Active', 'assets/images/user/user7.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.student_allocations ("id", "student_name", "student_id", "class_section", "route_name", "vehicle_no", "stop_point", "allocation_date", "status", "img") VALUES 
('88888888-8888-8888-8888-888888888888', 'Hannah Abbott', 'STU008', '11-A', 'Hill Top - Medical Center', 'VH-2020-008', 'Gold Hill', '2023-08-22', 'Active', 'assets/images/user/user8.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.student_allocations ("id", "student_name", "student_id", "class_section", "route_name", "vehicle_no", "stop_point", "allocation_date", "status", "img") VALUES 
('99999999-9999-9999-9999-999999999999', 'Ian Wright', 'STU009', '9-A', 'Market Square - Admin Block', 'VH-2017-009', 'Old Market', '2023-08-23', 'Active', 'assets/images/user/user9.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.student_allocations ("id", "student_name", "student_id", "class_section", "route_name", "vehicle_no", "stop_point", "allocation_date", "status", "img") VALUES 
('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'Julia Roberts', 'STU010', '12-A', 'Lake Side - Engineering Wing', 'VH-2021-010', 'Water Front', '2023-08-24', 'Active', 'assets/images/user/user10.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.student_allocations ("id", "student_name", "student_id", "class_section", "route_name", "vehicle_no", "stop_point", "allocation_date", "status", "img") VALUES 
('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'Kevin Hart', 'STU011', '8-B', 'Central Plaza - IT Center', 'VH-2022-011', 'Main Plaza', '2023-08-25', 'Active', 'assets/images/user/user11.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.student_allocations ("id", "student_name", "student_id", "class_section", "route_name", "vehicle_no", "stop_point", "allocation_date", "status", "img") VALUES 
('cccccccc-cccc-cccc-cccc-cccccccccccc', 'Laura Palmer', 'STU012', '10-C', 'Old Town - PG Hostel', 'VH-2019-012', 'North End', '2023-08-26', 'Active', 'assets/images/user/user6.jpg') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
