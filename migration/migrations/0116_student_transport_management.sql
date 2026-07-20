-- Migration for student transport route and vehicle details management
SET session_replication_role = 'replica';

CREATE TABLE IF NOT EXISTS public.student_my_routes (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "route_name" TEXT,
    "stop_name" TEXT,
    "pickup_time" TEXT,
    "drop_time" TEXT,
    "distance" TEXT,
    "monthly_fees" INTEGER
);

CREATE TABLE IF NOT EXISTS public.student_vehicle_details (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "vehicle_no" TEXT,
    "vehicle_model" TEXT,
    "driver_name" TEXT,
    "driver_contact" TEXT,
    "vehicle_type" TEXT,
    "capacity" INTEGER
);

-- Seed initial mock values
INSERT INTO public.student_my_routes ("id", "route_name", "stop_name", "pickup_time", "drop_time", "distance", "monthly_fees") VALUES
('9f100000-0000-0000-0000-000000000001', 'Route A - North', 'Maple Street', '07:30 AM', '04:00 PM', '5 km', 1500),
('9f100000-0000-0000-0000-000000000002', 'Route B - South', 'Pine Road', '07:15 AM', '04:30 PM', '10 km', 2000) ON CONFLICT DO NOTHING;

INSERT INTO public.student_vehicle_details ("id", "vehicle_no", "vehicle_model", "driver_name", "driver_contact", "vehicle_type", "capacity") VALUES
('9f200000-0000-0000-0000-000000000001', 'BUS-101', 'Tata Starbus', 'John Doe', '9876543210', 'Bus', 50),
('9f200000-0000-0000-0000-000000000002', 'VAN-201', 'Force Traveller', 'Robert Wilson', '9876543212', 'Van', 15) ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
