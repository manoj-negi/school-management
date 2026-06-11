-- Migration for exam_schedule table derived from examSchedule.json
SET session_replication_role = 'replica';

CREATE TABLE IF NOT EXISTS public.exam_schedule (
    "id" TEXT PRIMARY KEY,
    "subject" TEXT,
    "class" TEXT,
    "date" TIMESTAMP,
    "time" TEXT,
    "duration" TEXT,
    "room_no" TEXT,
    "total_marks" TEXT,
    "req_marks" TEXT
);

INSERT INTO public.exam_schedule ("id", "subject", "class", "date", "time", "duration", "room_no", "total_marks", "req_marks") VALUES ('001', 'Mathematics', 'Class 1', '2018-02-10T14:22:18Z', '10:30 AM', '3 hours', '101', '100', '35') ON CONFLICT DO NOTHING;
INSERT INTO public.exam_schedule ("id", "subject", "class", "date", "time", "duration", "room_no", "total_marks", "req_marks") VALUES ('002', 'Science', 'Class 1', '2018-02-11T14:22:18Z', '10:30 AM', '3 hours', '103', '100', '35') ON CONFLICT DO NOTHING;
INSERT INTO public.exam_schedule ("id", "subject", "class", "date", "time", "duration", "room_no", "total_marks", "req_marks") VALUES ('003', 'Geography', 'Class 1', '2018-02-12T14:22:18Z', '10:30 AM', '3 hours', '102', '100', '35') ON CONFLICT DO NOTHING;
INSERT INTO public.exam_schedule ("id", "subject", "class", "date", "time", "duration", "room_no", "total_marks", "req_marks") VALUES ('004', 'Chemistry', 'Class 1', '2018-02-13T14:22:18Z', '10:30 AM', '3 hours', '104', '100', '35') ON CONFLICT DO NOTHING;
INSERT INTO public.exam_schedule ("id", "subject", "class", "date", "time", "duration", "room_no", "total_marks", "req_marks") VALUES ('005', 'Biology', 'Class 1', '2018-02-15T14:22:18Z', '10:30 AM', '3 hours', '101', '100', '35') ON CONFLICT DO NOTHING;
INSERT INTO public.exam_schedule ("id", "subject", "class", "date", "time", "duration", "room_no", "total_marks", "req_marks") VALUES ('006', 'Economics', 'Class 1', '2018-02-16T14:22:18Z', '10:30 AM', '3 hours', '105', '100', '35') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';