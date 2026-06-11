-- Migration for lectures table derived from lectures.json
SET session_replication_role = 'replica';

CREATE TABLE IF NOT EXISTS public.lectures (
    "id" TEXT PRIMARY KEY,
    "subject_name" TEXT,
    "class" TEXT,
    "date" TIMESTAMP,
    "time" TEXT,
    "status" TEXT,
    "teacher_id" TEXT,
    "subject_id" TEXT,
    "student_group" TEXT,
    "duration" INTEGER,
    "location" TEXT,
    "attendance_count" INTEGER,
    "created_at" TIMESTAMP,
    "updated_at" TIMESTAMP,
    "reason_for_cancellation" TEXT
);

INSERT INTO public.lectures ("id", "subject_name", "class", "date", "time", "status", "teacher_id", "subject_id", "student_group", "duration", "location", "attendance_count", "created_at", "updated_at", "reason_for_cancellation") VALUES ('001', 'Mathematics', 'R305 A', '2019-02-17T14:22:18Z', '10:30', 'Confirm', 'T001', 'S001', 'Group A', 60, 'Room 101', 25, '2019-01-10T12:00:00Z', '2019-01-15T12:00:00Z', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.lectures ("id", "subject_name", "class", "date", "time", "status", "teacher_id", "subject_id", "student_group", "duration", "location", "attendance_count", "created_at", "updated_at", "reason_for_cancellation") VALUES ('002', 'Chemistry', 'R305 A', '2019-02-19T14:22:18Z', '10:30', 'Cancelled', 'T123', 'S456', 'Group A', 60, 'Room 305', 0, '2019-01-01T12:00:00Z', '2019-01-15T12:00:00Z', 'Weather conditions') ON CONFLICT DO NOTHING;
INSERT INTO public.lectures ("id", "subject_name", "class", "date", "time", "status", "teacher_id", "subject_id", "student_group", "duration", "location", "attendance_count", "created_at", "updated_at", "reason_for_cancellation") VALUES ('003', 'Physics', 'R452 B', '2019-02-22T14:22:18Z', '10:30', 'Cancelled', 'T002', 'S002', 'Group B', 60, 'Room 202', 0, '2019-01-12T12:00:00Z', '2019-01-18T12:00:00Z', 'Instructor illness') ON CONFLICT DO NOTHING;
INSERT INTO public.lectures ("id", "subject_name", "class", "date", "time", "status", "teacher_id", "subject_id", "student_group", "duration", "location", "attendance_count", "created_at", "updated_at", "reason_for_cancellation") VALUES ('004', 'Biology', 'R201 C', '2019-02-23T14:22:18Z', '10:30', 'Confirm', 'T003', 'S003', 'Group C', 60, 'Room 303', 30, '2019-01-15T12:00:00Z', '2019-01-20T12:00:00Z', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.lectures ("id", "subject_name", "class", "date", "time", "status", "teacher_id", "subject_id", "student_group", "duration", "location", "attendance_count", "created_at", "updated_at", "reason_for_cancellation") VALUES ('005', 'Mathematics', 'R103 F', '2019-02-24T14:22:18Z', '10:30', 'Confirm', 'T001', 'S001', 'Group D', 60, 'Room 101', 20, '2019-01-10T12:00:00Z', '2019-01-15T12:00:00Z', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.lectures ("id", "subject_name", "class", "date", "time", "status", "teacher_id", "subject_id", "student_group", "duration", "location", "attendance_count", "created_at", "updated_at", "reason_for_cancellation") VALUES ('006', 'Chemistry', 'R305 A', '2019-02-25T14:22:18Z', '10:30', 'Confirm', 'T123', 'S456', 'Group A', 60, 'Room 305', 28, '2019-01-01T12:00:00Z', '2019-01-15T12:00:00Z', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.lectures ("id", "subject_name", "class", "date", "time", "status", "teacher_id", "subject_id", "student_group", "duration", "location", "attendance_count", "created_at", "updated_at", "reason_for_cancellation") VALUES ('007', 'Physics', 'R503 F', '2019-02-26T14:22:18Z', '10:30', 'Cancelled', 'T002', 'S002', 'Group F', 60, 'Room 202', 0, '2019-01-12T12:00:00Z', '2019-01-18T12:00:00Z', 'Technical issues') ON CONFLICT DO NOTHING;
INSERT INTO public.lectures ("id", "subject_name", "class", "date", "time", "status", "teacher_id", "subject_id", "student_group", "duration", "location", "attendance_count", "created_at", "updated_at", "reason_for_cancellation") VALUES ('008', 'Biology', 'R305 A', '2019-02-17T14:22:18Z', '10:30', 'Confirm', 'T003', 'S003', 'Group A', 60, 'Room 303', 22, '2019-01-15T12:00:00Z', '2019-01-20T12:00:00Z', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.lectures ("id", "subject_name", "class", "date", "time", "status", "teacher_id", "subject_id", "student_group", "duration", "location", "attendance_count", "created_at", "updated_at", "reason_for_cancellation") VALUES ('009', 'Chemistry', 'R201 C', '2019-02-22T14:22:18Z', '10:30', 'Confirm', 'T123', 'S456', 'Group C', 60, 'Room 305', 30, '2019-01-01T12:00:00Z', '2019-01-15T12:00:00Z', NULL) ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';