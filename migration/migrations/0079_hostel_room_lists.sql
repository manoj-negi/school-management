-- Migration for hostel_room_lists table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.hostel_room_lists (
    "room_id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "room_number" TEXT,
    "room_type" TEXT,
    "floor" INTEGER,
    "capacity" INTEGER,
    "occupied_status" TEXT,
    "current_occupants" INTEGER,
    "price_fees" NUMERIC,
    "room_condition" TEXT,
    "date_assigned" TIMESTAMP,
    "room_supervisor_staff" TEXT,
    "hostel_block" TEXT,
    "check_in_date" TIMESTAMP,
    "check_out_date" TIMESTAMP,
    "room_type_code" TEXT,
    "room_description" TEXT
);

INSERT INTO public.hostel_room_lists ("room_id", "room_number", "room_type", "floor", "capacity", "occupied_status", "current_occupants", "price_fees", "room_condition", "date_assigned", "room_supervisor_staff", "hostel_block", "check_in_date", "check_out_date", "room_type_code", "room_description") VALUES
('80000000-0000-0000-0000-000000000001', '101', 'Single', 1, 1, 'Occupied', 1, 500.00, 'Good', '2023-10-01 00:00:00', 'John Doe', 'Block A', '2023-10-01 00:00:00', '2024-06-30 00:00:00', 'SGL101', 'Cozy single room') ON CONFLICT DO NOTHING;

INSERT INTO public.hostel_room_lists ("room_id", "room_number", "room_type", "floor", "capacity", "occupied_status", "current_occupants", "price_fees", "room_condition", "date_assigned", "room_supervisor_staff", "hostel_block", "check_in_date", "check_out_date", "room_type_code", "room_description") VALUES
('80000000-0000-0000-0000-000000000002', '102', 'Double', 1, 2, 'Vacant', 0, 350.00, 'Good', '2023-10-01 00:00:00', 'Jane Smith', 'Block A', '2023-10-01 00:00:00', '2024-06-30 00:00:00', 'DBL102', 'Spacious double room') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
