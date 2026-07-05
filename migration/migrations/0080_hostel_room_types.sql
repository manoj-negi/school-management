-- Migration for hostel_room_types table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.hostel_room_types (
    "room_type_id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "room_type_name" TEXT,
    "capacity" INTEGER,
    "room_category" TEXT,
    "room_description" TEXT,
    "room_price" NUMERIC,
    "room_facilities" TEXT,
    "room_area" NUMERIC,
    "room_condition" TEXT,
    "room_type_code" TEXT,
    "created_at" TIMESTAMP,
    "updated_at" TIMESTAMP,
    "status" TEXT,
    "max_occupants" INTEGER
);

INSERT INTO public.hostel_room_types ("room_type_id", "room_type_name", "capacity", "room_category", "room_description", "room_price", "room_facilities", "room_area", "room_condition", "room_type_code", "created_at", "updated_at", "status", "max_occupants") VALUES
('81000000-0000-0000-0000-000000000001', 'Single Deluxe', 1, 'AC', 'Luxurious single bed room with AC', 500.00, 'AC, Wifi, TV', 150.00, 'Excellent', 'SD101', '2023-10-01 00:00:00', '2023-10-01 00:00:00', 'Active', 1) ON CONFLICT DO NOTHING;

INSERT INTO public.hostel_room_types ("room_type_id", "room_type_name", "capacity", "room_category", "room_description", "room_price", "room_facilities", "room_area", "room_condition", "room_type_code", "created_at", "updated_at", "status", "max_occupants") VALUES
('81000000-0000-0000-0000-000000000002', 'Double Non-AC', 2, 'Non-AC', 'Standard double bed room without AC', 350.00, 'Wifi', 200.00, 'Good', 'DN102', '2023-10-01 00:00:00', '2023-10-01 00:00:00', 'Active', 2) ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
