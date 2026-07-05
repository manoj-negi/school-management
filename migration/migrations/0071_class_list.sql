-- Migration for classes table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.classes (
    "class_id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "class_name" TEXT,
    "class_code" TEXT,
    "teacher_id" TEXT,
    "start_date" TIMESTAMP,
    "end_date" TIMESTAMP,
    "room_number" TEXT,
    "schedule" TEXT,
    "semester" TEXT,
    "class_capacity" INTEGER,
    "status" TEXT,
    "description" TEXT,
    "class_type" TEXT,
    "created_at" TIMESTAMP,
    "updated_at" TIMESTAMP
);

INSERT INTO public.classes ("class_id", "class_name", "class_code", "teacher_id", "start_date", "end_date", "room_number", "schedule", "semester", "class_capacity", "status", "description", "class_type", "created_at", "updated_at") VALUES 
('11111111-1111-1111-1111-111111111111', 'Grade 10', '10A', '101', '2024-09-01', '2024-12-20', 'Room 101', 'Monday, Wednesday, Friday, 8:00 AM - 9:30 AM', 'Fall 2024', 30, 'Active', 'Core curriculum: Mathematics, English', 'Lecture', '2024-08-10 08:00:00', '2024-09-01 10:00:00') ON CONFLICT DO NOTHING;

INSERT INTO public.classes ("class_id", "class_name", "class_code", "teacher_id", "start_date", "end_date", "room_number", "schedule", "semester", "class_capacity", "status", "description", "class_type", "created_at", "updated_at") VALUES 
('22222222-2222-2222-2222-222222222222', 'Grade 11', '11B', '102', '2024-09-01', '2024-12-20', 'Room 102', 'Tuesday, Thursday, 9:00 AM - 10:30 AM', 'Fall 2024', 28, 'Active', 'Core curriculum: Physics, History', 'Lab', '2024-08-11 09:00:00', '2024-09-01 10:15:00') ON CONFLICT DO NOTHING;

INSERT INTO public.classes ("class_id", "class_name", "class_code", "teacher_id", "start_date", "end_date", "room_number", "schedule", "semester", "class_capacity", "status", "description", "class_type", "created_at", "updated_at") VALUES 
('33333333-3333-3333-3333-333333333333', 'Grade 12', '12A', '103', '2024-09-01', '2024-12-20', 'Room 103', 'Monday, Wednesday, Friday, 12:00 PM - 1:30 PM', 'Fall 2024', 25, 'Inactive', 'Core curriculum: Chemistry, Biology', 'Seminar', '2024-08-12 09:30:00', '2024-09-02 11:00:00') ON CONFLICT DO NOTHING;

INSERT INTO public.classes ("class_id", "class_name", "class_code", "teacher_id", "start_date", "end_date", "room_number", "schedule", "semester", "class_capacity", "status", "description", "class_type", "created_at", "updated_at") VALUES 
('44444444-4444-4444-4444-444444444444', 'Grade 10', '10B', '104', '2024-09-01', '2024-12-20', 'Room 104', 'Tuesday, Thursday, 10:45 AM - 12:15 PM', 'Fall 2024', 32, 'Inactive', 'Core curriculum: Mathematics, Social Studies', 'Workshop', '2024-08-13 10:00:00', '2024-09-03 11:30:00') ON CONFLICT DO NOTHING;

INSERT INTO public.classes ("class_id", "class_name", "class_code", "teacher_id", "start_date", "end_date", "room_number", "schedule", "semester", "class_capacity", "status", "description", "class_type", "created_at", "updated_at") VALUES 
('55555555-5555-5555-5555-555555555555', 'Grade 11', '11C', '105', '2024-09-01', '2024-12-20', 'Room 105', 'Monday, Wednesday, 3:00 PM - 4:30 PM', 'Fall 2024', 30, 'Active', 'Core curriculum: Physics, English', 'Lecture', '2024-08-14 10:30:00', '2024-09-04 12:00:00') ON CONFLICT DO NOTHING;

INSERT INTO public.classes ("class_id", "class_name", "class_code", "teacher_id", "start_date", "end_date", "room_number", "schedule", "semester", "class_capacity", "status", "description", "class_type", "created_at", "updated_at") VALUES 
('66666666-6666-6666-6666-666666666666', 'Grade 12', '12B', '106', '2024-09-01', '2024-12-20', 'Room 106', 'Tuesday, Thursday, 2:00 PM - 3:30 PM', 'Fall 2024', 20, 'Active', 'Core curriculum: Chemistry, Literature', 'Seminar', '2024-08-15 11:00:00', '2024-09-05 12:30:00') ON CONFLICT DO NOTHING;

INSERT INTO public.classes ("class_id", "class_name", "class_code", "teacher_id", "start_date", "end_date", "room_number", "schedule", "semester", "class_capacity", "status", "description", "class_type", "created_at", "updated_at") VALUES 
('77777777-7777-7777-7777-777777777777', 'Grade 10', '10C', '107', '2024-09-01', '2024-12-20', 'Room 107', 'Monday, Wednesday, Friday, 9:00 AM - 10:30 AM', 'Fall 2024', 30, 'Inactive', 'Core curriculum: Mathematics, Science', 'Workshop', '2024-08-16 09:30:00', '2024-09-06 13:00:00') ON CONFLICT DO NOTHING;

INSERT INTO public.classes ("class_id", "class_name", "class_code", "teacher_id", "start_date", "end_date", "room_number", "schedule", "semester", "class_capacity", "status", "description", "class_type", "created_at", "updated_at") VALUES 
('88888888-8888-8888-8888-888888888888', 'Grade 11', '11D', '108', '2024-09-01', '2024-12-20', 'Room 108', 'Monday, Wednesday, 2:00 PM - 3:30 PM', 'Fall 2024', 26, 'Active', 'Core curriculum: Social Studies, History', 'Lab', '2024-08-17 08:00:00', '2024-09-07 14:30:00') ON CONFLICT DO NOTHING;

INSERT INTO public.classes ("class_id", "class_name", "class_code", "teacher_id", "start_date", "end_date", "room_number", "schedule", "semester", "class_capacity", "status", "description", "class_type", "created_at", "updated_at") VALUES 
('99999999-9999-9999-9999-999999999999', 'Grade 12', '12C', '109', '2024-09-01', '2024-12-20', 'Room 109', 'Tuesday, Thursday, 11:00 AM - 12:30 PM', 'Fall 2024', 22, 'Active', 'Core curriculum: Biology, English', 'Lecture', '2024-08-18 09:15:00', '2024-09-08 15:00:00') ON CONFLICT DO NOTHING;

INSERT INTO public.classes ("class_id", "class_name", "class_code", "teacher_id", "start_date", "end_date", "room_number", "schedule", "semester", "class_capacity", "status", "description", "class_type", "created_at", "updated_at") VALUES 
('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'Grade 10', '10D', '110', '2024-09-01', '2024-12-20', 'Room 110', 'Monday, Wednesday, Friday, 12:00 PM - 1:30 PM', 'Fall 2024', 32, 'Active', 'Core curriculum: Social Studies, English', 'Seminar', '2024-08-19 09:45:00', '2024-09-09 15:30:00') ON CONFLICT DO NOTHING;

INSERT INTO public.classes ("class_id", "class_name", "class_code", "teacher_id", "start_date", "end_date", "room_number", "schedule", "semester", "class_capacity", "status", "description", "class_type", "created_at", "updated_at") VALUES 
('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'Grade 11', '11E', '111', '2024-09-01', '2024-12-20', 'Room 111', 'Monday, Wednesday, 3:00 PM - 4:30 PM', 'Fall 2024', 27, 'Inactive', 'Core curriculum: Economics, English', 'Lab', '2024-08-20 10:30:00', '2024-09-10 16:00:00') ON CONFLICT DO NOTHING;

INSERT INTO public.classes ("class_id", "class_name", "class_code", "teacher_id", "start_date", "end_date", "room_number", "schedule", "semester", "class_capacity", "status", "description", "class_type", "created_at", "updated_at") VALUES 
('cccccccc-cccc-cccc-cccc-cccccccccccc', 'Grade 12', '12D', '112', '2024-09-01', '2024-12-20', 'Room 112', 'Tuesday, Thursday, 3:00 PM - 4:30 PM', 'Fall 2024', 30, 'Active', 'Core curriculum: Physics, History', 'Seminar', '2024-08-21 11:00:00', '2024-09-11 17:00:00') ON CONFLICT DO NOTHING;

INSERT INTO public.classes ("class_id", "class_name", "class_code", "teacher_id", "start_date", "end_date", "room_number", "schedule", "semester", "class_capacity", "status", "description", "class_type", "created_at", "updated_at") VALUES 
('dddddddd-dddd-dddd-dddd-dddddddddddd', 'Grade 10', '10E', '113', '2024-09-01', '2024-12-20', 'Room 113', 'Tuesday, Thursday, 1:00 PM - 2:30 PM', 'Fall 2024', 29, 'Active', 'Core curriculum: Mathematics, Chemistry', 'Workshop', '2024-08-22 12:30:00', '2024-09-12 18:00:00') ON CONFLICT DO NOTHING;

INSERT INTO public.classes ("class_id", "class_name", "class_code", "teacher_id", "start_date", "end_date", "room_number", "schedule", "semester", "class_capacity", "status", "description", "class_type", "created_at", "updated_at") VALUES 
('eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee', 'Grade 11', '11F', '114', '2024-09-01', '2024-12-20', 'Room 114', 'Monday, Wednesday, Friday, 8:30 AM - 10:00 AM', 'Fall 2024', 28, 'Active', 'Core curriculum: Biology, Economics', 'Lecture', '2024-08-23 13:00:00', '2024-09-13 19:00:00') ON CONFLICT DO NOTHING;

INSERT INTO public.classes ("class_id", "class_name", "class_code", "teacher_id", "start_date", "end_date", "room_number", "schedule", "semester", "class_capacity", "status", "description", "class_type", "created_at", "updated_at") VALUES 
('ffffffff-ffff-ffff-ffff-ffffffffffff', 'Grade 12', '12E', '115', '2024-09-01', '2024-12-20', 'Room 115', 'Monday, Wednesday, Friday, 1:00 PM - 2:30 PM', 'Fall 2024', 24, 'Inactive', 'Core curriculum: Literature, Physics', 'Seminar', '2024-08-24 13:45:00', '2024-09-14 20:00:00') ON CONFLICT DO NOTHING;

INSERT INTO public.classes ("class_id", "class_name", "class_code", "teacher_id", "start_date", "end_date", "room_number", "schedule", "semester", "class_capacity", "status", "description", "class_type", "created_at", "updated_at") VALUES 
('00000000-0000-0000-0000-000000000000', 'Grade 10', '10F', '116', '2024-09-01', '2024-12-20', 'Room 116', 'Monday, Wednesday, Friday, 11:00 AM - 12:30 PM', 'Fall 2024', 33, 'Active', 'Core curriculum: English, Social Studies', 'Workshop', '2024-08-25 14:00:00', '2024-09-15 21:00:00') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
