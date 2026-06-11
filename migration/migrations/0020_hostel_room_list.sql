-- Migration for hostel_room_list table derived from hostel-room-list.json
SET session_replication_role = 'replica';

CREATE TABLE IF NOT EXISTS public.hostel_room_list (
    "room_id" TEXT,
    "room_number" TEXT,
    "room_type" TEXT,
    "floor" INTEGER,
    "capacity" INTEGER,
    "occupied_status" TEXT,
    "current_occupants" INTEGER,
    "price_fees" INTEGER,
    "room_condition" TEXT,
    "date_assigned" TIMESTAMP,
    "room_supervisor_staff" TEXT,
    "hostel_block" TEXT,
    "check_in_date" TIMESTAMP,
    "check_out_date" TIMESTAMP,
    "room_type_code" TEXT,
    "room_description" TEXT
);

INSERT INTO public.hostel_room_list ("room_id", "room_number", "room_type", "floor", "capacity", "occupied_status", "current_occupants", "price_fees", "room_condition", "date_assigned", "room_supervisor_staff", "hostel_block", "check_in_date", "check_out_date", "room_type_code", "room_description") VALUES ('R001', '101', 'Single', 1, 1, 'Occupied', 1, 1000, 'Good', '2024-08-01', 'John Doe', 'A Block', '2024-08-01', '2025-07-31', 'SGL', 'A spacious air-conditioned room with an attached bathroom and study desk.') ON CONFLICT DO NOTHING;
INSERT INTO public.hostel_room_list ("room_id", "room_number", "room_type", "floor", "capacity", "occupied_status", "current_occupants", "price_fees", "room_condition", "date_assigned", "room_supervisor_staff", "hostel_block", "check_in_date", "check_out_date", "room_type_code", "room_description") VALUES ('R002', '102', 'Double', 1, 2, 'Occupied', 2, 1500, 'Good', '2024-08-01', 'Jane Smith', 'A Block', '2024-08-01', '2025-07-31', 'DBL', 'A double-occupancy room with two beds, a desk, and an attached bathroom.') ON CONFLICT DO NOTHING;
INSERT INTO public.hostel_room_list ("room_id", "room_number", "room_type", "floor", "capacity", "occupied_status", "current_occupants", "price_fees", "room_condition", "date_assigned", "room_supervisor_staff", "hostel_block", "check_in_date", "check_out_date", "room_type_code", "room_description") VALUES ('R003', '103', 'Triple', 1, 3, 'Vacant', 0, 1800, 'Needs Repair', NULL, 'Alice Johnson', 'B Block', NULL, NULL, 'TRL', 'A spacious room with three beds and a shared bathroom, currently under maintenance.') ON CONFLICT DO NOTHING;
INSERT INTO public.hostel_room_list ("room_id", "room_number", "room_type", "floor", "capacity", "occupied_status", "current_occupants", "price_fees", "room_condition", "date_assigned", "room_supervisor_staff", "hostel_block", "check_in_date", "check_out_date", "room_type_code", "room_description") VALUES ('R004', '104', 'Single', 2, 1, 'Occupied', 1, 1000, 'Good', '2024-08-10', 'John Doe', 'C Block', '2024-08-10', '2025-08-09', 'SGL', 'A comfortable room with a single bed and an attached bathroom.') ON CONFLICT DO NOTHING;
INSERT INTO public.hostel_room_list ("room_id", "room_number", "room_type", "floor", "capacity", "occupied_status", "current_occupants", "price_fees", "room_condition", "date_assigned", "room_supervisor_staff", "hostel_block", "check_in_date", "check_out_date", "room_type_code", "room_description") VALUES ('R005', '105', 'Double', 2, 2, 'Occupied', 2, 1200, 'Good', '2024-09-01', 'Emma Lee', 'C Block', '2024-09-01', '2025-08-31', 'DBL', 'A well-lit room with two beds, a study desk, and a shared bathroom.') ON CONFLICT DO NOTHING;
INSERT INTO public.hostel_room_list ("room_id", "room_number", "room_type", "floor", "capacity", "occupied_status", "current_occupants", "price_fees", "room_condition", "date_assigned", "room_supervisor_staff", "hostel_block", "check_in_date", "check_out_date", "room_type_code", "room_description") VALUES ('R006', '106', 'Triple', 2, 3, 'Vacant', 0, 1500, 'Good', NULL, 'Alice Johnson', 'B Block', NULL, NULL, 'TRL', 'A spacious room with three beds and a shared bathroom.') ON CONFLICT DO NOTHING;
INSERT INTO public.hostel_room_list ("room_id", "room_number", "room_type", "floor", "capacity", "occupied_status", "current_occupants", "price_fees", "room_condition", "date_assigned", "room_supervisor_staff", "hostel_block", "check_in_date", "check_out_date", "room_type_code", "room_description") VALUES ('R007', '201', 'Single', 2, 1, 'Occupied', 1, 1100, 'Good', '2024-10-01', 'Mark Wood', 'D Block', '2024-10-01', '2025-09-30', 'SGL', 'A premium single room with modern amenities.') ON CONFLICT DO NOTHING;
INSERT INTO public.hostel_room_list ("room_id", "room_number", "room_type", "floor", "capacity", "occupied_status", "current_occupants", "price_fees", "room_condition", "date_assigned", "room_supervisor_staff", "hostel_block", "check_in_date", "check_out_date", "room_type_code", "room_description") VALUES ('R008', '202', 'Double', 2, 2, 'Vacant', 0, 1600, 'Good', NULL, 'Mark Wood', 'D Block', NULL, NULL, 'DBL', 'A spacious double room in D block.') ON CONFLICT DO NOTHING;
INSERT INTO public.hostel_room_list ("room_id", "room_number", "room_type", "floor", "capacity", "occupied_status", "current_occupants", "price_fees", "room_condition", "date_assigned", "room_supervisor_staff", "hostel_block", "check_in_date", "check_out_date", "room_type_code", "room_description") VALUES ('R009', '301', 'Single', 3, 1, 'Occupied', 1, 1200, 'Excellent', '2024-11-01', 'Sarah Hall', 'A Block', '2024-11-01', '2025-10-31', 'SGL', 'A top-floor single room with a great view.') ON CONFLICT DO NOTHING;
INSERT INTO public.hostel_room_list ("room_id", "room_number", "room_type", "floor", "capacity", "occupied_status", "current_occupants", "price_fees", "room_condition", "date_assigned", "room_supervisor_staff", "hostel_block", "check_in_date", "check_out_date", "room_type_code", "room_description") VALUES ('R010', '302', 'Double', 3, 2, 'Occupied', 1, 1700, 'Good', '2024-11-15', 'Sarah Hall', 'A Block', '2024-11-15', '2025-11-14', 'DBL', 'A double room with one occupant currently.') ON CONFLICT DO NOTHING;
INSERT INTO public.hostel_room_list ("room_id", "room_number", "room_type", "floor", "capacity", "occupied_status", "current_occupants", "price_fees", "room_condition", "date_assigned", "room_supervisor_staff", "hostel_block", "check_in_date", "check_out_date", "room_type_code", "room_description") VALUES ('R011', '401', 'Triple', 4, 3, 'Occupied', 3, 2000, 'Good', '2024-12-01', 'Peter King', 'B Block', '2024-12-01', '2025-11-30', 'TRL', 'A large triple room fully occupied.') ON CONFLICT DO NOTHING;
INSERT INTO public.hostel_room_list ("room_id", "room_number", "room_type", "floor", "capacity", "occupied_status", "current_occupants", "price_fees", "room_condition", "date_assigned", "room_supervisor_staff", "hostel_block", "check_in_date", "check_out_date", "room_type_code", "room_description") VALUES ('R012', '402', 'Single', 4, 1, 'Vacant', 0, 1300, 'Good', NULL, 'Peter King', 'B Block', NULL, NULL, 'SGL', 'A quiet single room on the fourth floor.') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';