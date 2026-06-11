-- Migration for exam_schedule table derived from examSchedule.json
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.exam_schedule (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "subject" TEXT,
    "class" TEXT,
    "date" TIMESTAMP,
    "time" TEXT,
    "duration" TEXT,
    "room_no" TEXT,
    "total_marks" TEXT,
    "req_marks" TEXT
);
INSERT INTO public.exam_schedule ("id", "subject", "class", "date", "time", "duration", "room_no", "total_marks", "req_marks") VALUES ('fce8a088-2cf8-34fa-a261-b6d616338f43', 'Mathematics', 'Class 1', '2018-02-10T14:22:18Z', '10:30 AM', '3 hours', '101', '100', '35') ON CONFLICT DO NOTHING;
INSERT INTO public.exam_schedule ("id", "subject", "class", "date", "time", "duration", "room_no", "total_marks", "req_marks") VALUES ('8b78d713-b621-3576-9719-a0ba5fd263c3', 'Science', 'Class 1', '2018-02-11T14:22:18Z', '10:30 AM', '3 hours', '103', '100', '35') ON CONFLICT DO NOTHING;
INSERT INTO public.exam_schedule ("id", "subject", "class", "date", "time", "duration", "room_no", "total_marks", "req_marks") VALUES ('e50c62bc-d417-34c7-a77d-88f867b96d21', 'Geography', 'Class 1', '2018-02-12T14:22:18Z', '10:30 AM', '3 hours', '102', '100', '35') ON CONFLICT DO NOTHING;
INSERT INTO public.exam_schedule ("id", "subject", "class", "date", "time", "duration", "room_no", "total_marks", "req_marks") VALUES ('50ba3525-7216-370a-a252-242f1857732b', 'Chemistry', 'Class 1', '2018-02-13T14:22:18Z', '10:30 AM', '3 hours', '104', '100', '35') ON CONFLICT DO NOTHING;
INSERT INTO public.exam_schedule ("id", "subject", "class", "date", "time", "duration", "room_no", "total_marks", "req_marks") VALUES ('9c862202-b016-31f8-9d94-51f925e33a79', 'Biology', 'Class 1', '2018-02-15T14:22:18Z', '10:30 AM', '3 hours', '101', '100', '35') ON CONFLICT DO NOTHING;
INSERT INTO public.exam_schedule ("id", "subject", "class", "date", "time", "duration", "room_no", "total_marks", "req_marks") VALUES ('3080b4ba-de22-36ac-ba45-fa198830b748', 'Economics', 'Class 1', '2018-02-16T14:22:18Z', '10:30 AM', '3 hours', '105', '100', '35') ON CONFLICT DO NOTHING;
SET session_replication_role = 'origin';
