-- Migration for transport_routes table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.transport_routes (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "route_name" TEXT,
    "start_point" TEXT,
    "end_point" TEXT,
    "distance" TEXT,
    "vehicle_no" TEXT,
    "route_fees" TEXT,
    "status" TEXT
);

INSERT INTO public.transport_routes ("id", "route_name", "start_point", "end_point", "distance", "vehicle_no", "route_fees", "status") VALUES 
('11111111-1111-1111-1111-111111111111', 'North Campus - Main Gate', 'North Campus', 'Main Gate', '5 km', 'VH-2021-001', '50', 'Active') ON CONFLICT DO NOTHING;

INSERT INTO public.transport_routes ("id", "route_name", "start_point", "end_point", "distance", "vehicle_no", "route_fees", "status") VALUES 
('22222222-2222-2222-2222-222222222222', 'City Center - South Block', 'City Center', 'South Block', '12 km', 'VH-2020-002', '120', 'Active') ON CONFLICT DO NOTHING;

INSERT INTO public.transport_routes ("id", "route_name", "start_point", "end_point", "distance", "vehicle_no", "route_fees", "status") VALUES 
('33333333-3333-3333-3333-333333333333', 'Airport Road - Science Wing', 'Airport Road', 'Science Wing', '15 km', 'VH-2019-003', '150', 'Inactive') ON CONFLICT DO NOTHING;

INSERT INTO public.transport_routes ("id", "route_name", "start_point", "end_point", "distance", "vehicle_no", "route_fees", "status") VALUES 
('44444444-4444-4444-4444-444444444444', 'Green Valley - Arts College', 'Green Valley', 'Arts College', '8 km', 'VH-2022-004', '80', 'Active') ON CONFLICT DO NOTHING;

INSERT INTO public.transport_routes ("id", "route_name", "start_point", "end_point", "distance", "vehicle_no", "route_fees", "status") VALUES 
('55555555-5555-5555-5555-555555555555', 'Railway Station - Hostel Block', 'Railway Station', 'Hostel Block', '10 km', 'VH-2021-005', '100', 'Active') ON CONFLICT DO NOTHING;

INSERT INTO public.transport_routes ("id", "route_name", "start_point", "end_point", "distance", "vehicle_no", "route_fees", "status") VALUES 
('66666666-6666-6666-6666-666666666666', 'East Suburb - Library', 'East Suburb', 'Library', '20 km', 'VH-2018-006', '200', 'Active') ON CONFLICT DO NOTHING;

INSERT INTO public.transport_routes ("id", "route_name", "start_point", "end_point", "distance", "vehicle_no", "route_fees", "status") VALUES 
('77777777-7777-7777-7777-777777777777', 'West End - Sports Complex', 'West End', 'Sports Complex', '18 km', 'VH-2023-007', '180', 'Active') ON CONFLICT DO NOTHING;

INSERT INTO public.transport_routes ("id", "route_name", "start_point", "end_point", "distance", "vehicle_no", "route_fees", "status") VALUES 
('88888888-8888-8888-8888-888888888888', 'Hill Top - Medical Center', 'Hill Top', 'Medical Center', '25 km', 'VH-2020-008', '250', 'Active') ON CONFLICT DO NOTHING;

INSERT INTO public.transport_routes ("id", "route_name", "start_point", "end_point", "distance", "vehicle_no", "route_fees", "status") VALUES 
('99999999-9999-9999-9999-999999999999', 'Market Square - Admin Block', 'Market Square', 'Admin Block', '6 km', 'VH-2017-009', '60', 'Active') ON CONFLICT DO NOTHING;

INSERT INTO public.transport_routes ("id", "route_name", "start_point", "end_point", "distance", "vehicle_no", "route_fees", "status") VALUES 
('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'Lake Side - Engineering Wing', 'Lake Side', 'Engineering Wing', '14 km', 'VH-2021-010', '140', 'Active') ON CONFLICT DO NOTHING;

INSERT INTO public.transport_routes ("id", "route_name", "start_point", "end_point", "distance", "vehicle_no", "route_fees", "status") VALUES 
('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'Central Plaza - IT Center', 'Central Plaza', 'IT Center', '7 km', 'VH-2022-011', '70', 'Active') ON CONFLICT DO NOTHING;

INSERT INTO public.transport_routes ("id", "route_name", "start_point", "end_point", "distance", "vehicle_no", "route_fees", "status") VALUES 
('cccccccc-cccc-cccc-cccc-cccccccccccc', 'Old Town - PG Hostel', 'Old Town', 'PG Hostel', '11 km', 'VH-2019-012', '110', 'Active') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
