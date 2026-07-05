-- Migration for vehicles table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.vehicles (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "vehicle_no" TEXT,
    "vehicle_model" TEXT,
    "year_made" TEXT,
    "driver_name" TEXT,
    "driver_license" TEXT,
    "vehicle_type" TEXT,
    "status" TEXT,
    "img" TEXT
);

INSERT INTO public.vehicles ("id", "vehicle_no", "vehicle_model", "year_made", "driver_name", "driver_license", "vehicle_type", "status", "img") VALUES 
('11111111-1111-1111-1111-111111111111', 'VH-2021-001', 'Toyota Coaster', '2021', 'John Doe', 'DL-54321', 'Bus', 'Active', 'assets/images/user/user1.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.vehicles ("id", "vehicle_no", "vehicle_model", "year_made", "driver_name", "driver_license", "vehicle_type", "status", "img") VALUES 
('22222222-2222-2222-2222-222222222222', 'VH-2020-002', 'Mercedes-Benz Sprinter', '2020', 'Robert Smith', 'DL-65432', 'Van', 'Active', 'assets/images/user/user2.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.vehicles ("id", "vehicle_no", "vehicle_model", "year_made", "driver_name", "driver_license", "vehicle_type", "status", "img") VALUES 
('33333333-3333-3333-3333-333333333333', 'VH-2019-003', 'Tata Marcopolo', '2019', 'Michael Brown', 'DL-76543', 'Bus', 'Under Maintenance', 'assets/images/user/user3.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.vehicles ("id", "vehicle_no", "vehicle_model", "year_made", "driver_name", "driver_license", "vehicle_type", "status", "img") VALUES 
('44444444-4444-4444-4444-444444444444', 'VH-2022-004', 'Ford Transit', '2022', 'William Wilson', 'DL-87654', 'Van', 'Active', 'assets/images/user/user4.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.vehicles ("id", "vehicle_no", "vehicle_model", "year_made", "driver_name", "driver_license", "vehicle_type", "status", "img") VALUES 
('55555555-5555-5555-5555-555555555555', 'VH-2021-005', 'Toyota Hiace', '2021', 'James Davis', 'DL-98765', 'Van', 'Inactive', 'assets/images/user/user5.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.vehicles ("id", "vehicle_no", "vehicle_model", "year_made", "driver_name", "driver_license", "vehicle_type", "status", "img") VALUES 
('66666666-6666-6666-6666-666666666666', 'VH-2018-006', 'Ashok Leyland Falcon', '2018', 'Richard Miller', 'DL-10987', 'Bus', 'Active', 'assets/images/user/user6.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.vehicles ("id", "vehicle_no", "vehicle_model", "year_made", "driver_name", "driver_license", "vehicle_type", "status", "img") VALUES 
('77777777-7777-7777-7777-777777777777', 'VH-2023-007', 'Isuzu NPR', '2023', 'Joseph Taylor', 'DL-21098', 'Bus', 'Active', 'assets/images/user/user7.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.vehicles ("id", "vehicle_no", "vehicle_model", "year_made", "driver_name", "driver_license", "vehicle_type", "status", "img") VALUES 
('88888888-8888-8888-8888-888888888888', 'VH-2020-008', 'Volkswagen Crafter', '2020', 'Thomas Anderson', 'DL-32109', 'Van', 'Active', 'assets/images/user/user8.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.vehicles ("id", "vehicle_no", "vehicle_model", "year_made", "driver_name", "driver_license", "vehicle_type", "status", "img") VALUES 
('99999999-9999-9999-9999-999999999999', 'VH-2017-009', 'Mitsubishi Rosa', '2017', 'Charles Moore', 'DL-43210', 'Bus', 'Active', 'assets/images/user/user9.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.vehicles ("id", "vehicle_no", "vehicle_model", "year_made", "driver_name", "driver_license", "vehicle_type", "status", "img") VALUES 
('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'VH-2021-010', 'Nissan Urvan', '2021', 'Christopher Jackson', 'DL-54321', 'Van', 'Active', 'assets/images/user/user10.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.vehicles ("id", "vehicle_no", "vehicle_model", "year_made", "driver_name", "driver_license", "vehicle_type", "status", "img") VALUES 
('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'VH-2022-011', 'Hyundai County', '2022', 'Daniel White', 'DL-65432', 'Bus', 'Active', 'assets/images/user/user11.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.vehicles ("id", "vehicle_no", "vehicle_model", "year_made", "driver_name", "driver_license", "vehicle_type", "status", "img") VALUES 
('cccccccc-cccc-cccc-cccc-cccccccccccc', 'VH-2019-012', 'Ford E-Series', '2019', 'Matthew Harris', 'DL-76543', 'Van', 'Active', 'assets/images/user/user6.jpg') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
