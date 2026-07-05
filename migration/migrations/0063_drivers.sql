-- Migration for drivers table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.drivers (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "driver_name" TEXT,
    "license_no" TEXT,
    "phone" TEXT,
    "joining_date" TIMESTAMP,
    "address" TEXT,
    "experience" TEXT,
    "status" TEXT,
    "img" TEXT
);

INSERT INTO public.drivers ("id", "driver_name", "license_no", "phone", "joining_date", "address", "experience", "status", "img") VALUES 
('11111111-1111-1111-1111-111111111111', 'John Doe', 'DL-54321', '1234567890', '2021-01-15', '123 Main St, New York', '5 years', 'Active', 'assets/images/user/user1.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.drivers ("id", "driver_name", "license_no", "phone", "joining_date", "address", "experience", "status", "img") VALUES 
('22222222-2222-2222-2222-222222222222', 'Robert Smith', 'DL-65432', '2345678901', '2020-05-20', '456 Elm St, Chicago', '8 years', 'Active', 'assets/images/user/user2.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.drivers ("id", "driver_name", "license_no", "phone", "joining_date", "address", "experience", "status", "img") VALUES 
('33333333-3333-3333-3333-333333333333', 'Michael Brown', 'DL-76543', '3456789012', '2019-11-10', '789 Oak St, Los Angeles', '10 years', 'Inactive', 'assets/images/user/user3.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.drivers ("id", "driver_name", "license_no", "phone", "joining_date", "address", "experience", "status", "img") VALUES 
('44444444-4444-4444-4444-444444444444', 'William Wilson', 'DL-87654', '4567890123', '2022-03-05', '321 Pine St, Houston', '3 years', 'Active', 'assets/images/user/user4.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.drivers ("id", "driver_name", "license_no", "phone", "joining_date", "address", "experience", "status", "img") VALUES 
('55555555-5555-5555-5555-555555555555', 'James Davis', 'DL-98765', '5678901234', '2021-08-12', '654 Maple St, Phoenix', '4 years', 'Active', 'assets/images/user/user5.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.drivers ("id", "driver_name", "license_no", "phone", "joining_date", "address", "experience", "status", "img") VALUES 
('66666666-6666-6666-6666-666666666666', 'Richard Miller', 'DL-10987', '6789012345', '2018-09-25', '987 Cedar St, Philadelphia', '12 years', 'Active', 'assets/images/user/user6.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.drivers ("id", "driver_name", "license_no", "phone", "joining_date", "address", "experience", "status", "img") VALUES 
('77777777-7777-7777-7777-777777777777', 'Joseph Taylor', 'DL-21098', '7890123456', '2023-02-01', '159 Birch St, San Antonio', '2 years', 'Active', 'assets/images/user/user7.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.drivers ("id", "driver_name", "license_no", "phone", "joining_date", "address", "experience", "status", "img") VALUES 
('88888888-8888-8888-8888-888888888888', 'Thomas Anderson', 'DL-32109', '8901234567', '2020-12-10', '753 Walnut St, San Diego', '7 years', 'Active', 'assets/images/user/user8.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.drivers ("id", "driver_name", "license_no", "phone", "joining_date", "address", "experience", "status", "img") VALUES 
('99999999-9999-9999-9999-999999999999', 'Charles Moore', 'DL-43210', '9012345678', '2017-04-18', '357 Cherry St, Dallas', '15 years', 'Active', 'assets/images/user/user9.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.drivers ("id", "driver_name", "license_no", "phone", "joining_date", "address", "experience", "status", "img") VALUES 
('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'Christopher Jackson', 'DL-54321', '0123456789', '2021-06-30', '951 Ash St, San Jose', '6 years', 'Active', 'assets/images/user/user10.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.drivers ("id", "driver_name", "license_no", "phone", "joining_date", "address", "experience", "status", "img") VALUES 
('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'Daniel White', 'DL-65432', '1234509876', '2022-10-15', '852 Spruce St, Austin', '4 years', 'Active', 'assets/images/user/user11.jpg') ON CONFLICT DO NOTHING;

INSERT INTO public.drivers ("id", "driver_name", "license_no", "phone", "joining_date", "address", "experience", "status", "img") VALUES 
('cccccccc-cccc-cccc-cccc-cccccccccccc', 'Matthew Harris', 'DL-76543', '2345610987', '2019-02-28', '741 Poplar St, Jacksonville', '9 years', 'Active', 'assets/images/user/user6.jpg') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
