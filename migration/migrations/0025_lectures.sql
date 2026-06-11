-- Migration for lectures table derived from lectures.json
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.lectures (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "subject_name" TEXT,
    "class" TEXT,
    "date" TIMESTAMP,
    "time" TEXT,
    "status" TEXT,
    "teacher_id" UUID,
    "subject_id" UUID,
    "student_group" TEXT,
    "duration" INTEGER,
    "location" TEXT,
    "attendance_count" INTEGER,
    "created_at" TIMESTAMP,
    "updated_at" TIMESTAMP,
    "reason_for_cancellation" TEXT
);
INSERT INTO public.lectures ("id", "subject_name", "class", "date", "time", "status", "teacher_id", "subject_id", "student_group", "duration", "location", "attendance_count", "created_at", "updated_at", "reason_for_cancellation") VALUES ('363f5079-c480-3df0-9f17-fccd30c71086', 'Mathematics', 'R305 A', '2019-02-17T14:22:18Z', '10:30', 'Confirm', 'b6777613-19a5-337c-8ca1-8be541817517', 'cd0943ec-58f5-35bf-93b8-2cc2b4a582f4', 'Group A', 60, 'Room 101', 25, '2019-01-10T12:00:00Z', '2019-01-15T12:00:00Z', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.lectures ("id", "subject_name", "class", "date", "time", "status", "teacher_id", "subject_id", "student_group", "duration", "location", "attendance_count", "created_at", "updated_at", "reason_for_cancellation") VALUES ('d78f08b4-d582-3c23-8b13-5e3540564a41', 'Chemistry', 'R305 A', '2019-02-19T14:22:18Z', '10:30', 'Cancelled', 'f788de1d-7e8d-32a5-a31f-caca83eb3d8e', '9d4ce312-39c4-362e-83a8-3ac05654a99f', 'Group A', 60, 'Room 305', 0, '2019-01-01T12:00:00Z', '2019-01-15T12:00:00Z', 'Weather conditions') ON CONFLICT DO NOTHING;
INSERT INTO public.lectures ("id", "subject_name", "class", "date", "time", "status", "teacher_id", "subject_id", "student_group", "duration", "location", "attendance_count", "created_at", "updated_at", "reason_for_cancellation") VALUES ('3015f4d6-4aff-39b6-9f48-ba080b480a6b', 'Physics', 'R452 B', '2019-02-22T14:22:18Z', '10:30', 'Cancelled', '3b9f8f28-fc72-3aa3-bb78-5b24aaee8d94', '65bb752a-a1ee-3ab9-af73-adcbae32b2f0', 'Group B', 60, 'Room 202', 0, '2019-01-12T12:00:00Z', '2019-01-18T12:00:00Z', 'Instructor illness') ON CONFLICT DO NOTHING;
INSERT INTO public.lectures ("id", "subject_name", "class", "date", "time", "status", "teacher_id", "subject_id", "student_group", "duration", "location", "attendance_count", "created_at", "updated_at", "reason_for_cancellation") VALUES ('6c78df55-1164-3f98-8096-845b2a3fa51e', 'Biology', 'R201 C', '2019-02-23T14:22:18Z', '10:30', 'Confirm', '09aeb785-1365-34b2-931d-f29af4bfb211', '1c20f450-fc5a-3b86-940a-45ebe3a5dde7', 'Group C', 60, 'Room 303', 30, '2019-01-15T12:00:00Z', '2019-01-20T12:00:00Z', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.lectures ("id", "subject_name", "class", "date", "time", "status", "teacher_id", "subject_id", "student_group", "duration", "location", "attendance_count", "created_at", "updated_at", "reason_for_cancellation") VALUES ('10c176e9-d749-3169-b6b3-65eb1219cac9', 'Mathematics', 'R103 F', '2019-02-24T14:22:18Z', '10:30', 'Confirm', 'b6777613-19a5-337c-8ca1-8be541817517', 'cd0943ec-58f5-35bf-93b8-2cc2b4a582f4', 'Group D', 60, 'Room 101', 20, '2019-01-10T12:00:00Z', '2019-01-15T12:00:00Z', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.lectures ("id", "subject_name", "class", "date", "time", "status", "teacher_id", "subject_id", "student_group", "duration", "location", "attendance_count", "created_at", "updated_at", "reason_for_cancellation") VALUES ('32367c7f-c3ef-38ec-8f2b-1abd1323df5c', 'Chemistry', 'R305 A', '2019-02-25T14:22:18Z', '10:30', 'Confirm', 'f788de1d-7e8d-32a5-a31f-caca83eb3d8e', '9d4ce312-39c4-362e-83a8-3ac05654a99f', 'Group A', 60, 'Room 305', 28, '2019-01-01T12:00:00Z', '2019-01-15T12:00:00Z', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.lectures ("id", "subject_name", "class", "date", "time", "status", "teacher_id", "subject_id", "student_group", "duration", "location", "attendance_count", "created_at", "updated_at", "reason_for_cancellation") VALUES ('ed6500dc-7801-30c9-8d1b-1881504695b8', 'Physics', 'R503 F', '2019-02-26T14:22:18Z', '10:30', 'Cancelled', '3b9f8f28-fc72-3aa3-bb78-5b24aaee8d94', '65bb752a-a1ee-3ab9-af73-adcbae32b2f0', 'Group F', 60, 'Room 202', 0, '2019-01-12T12:00:00Z', '2019-01-18T12:00:00Z', 'Technical issues') ON CONFLICT DO NOTHING;
INSERT INTO public.lectures ("id", "subject_name", "class", "date", "time", "status", "teacher_id", "subject_id", "student_group", "duration", "location", "attendance_count", "created_at", "updated_at", "reason_for_cancellation") VALUES ('c95e01ed-8e1f-3e23-b288-704142df7871', 'Biology', 'R305 A', '2019-02-17T14:22:18Z', '10:30', 'Confirm', '09aeb785-1365-34b2-931d-f29af4bfb211', '1c20f450-fc5a-3b86-940a-45ebe3a5dde7', 'Group A', 60, 'Room 303', 22, '2019-01-15T12:00:00Z', '2019-01-20T12:00:00Z', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.lectures ("id", "subject_name", "class", "date", "time", "status", "teacher_id", "subject_id", "student_group", "duration", "location", "attendance_count", "created_at", "updated_at", "reason_for_cancellation") VALUES ('34ab7e26-6194-3cb1-8658-7490b5ff2ad0', 'Chemistry', 'R201 C', '2019-02-22T14:22:18Z', '10:30', 'Confirm', 'f788de1d-7e8d-32a5-a31f-caca83eb3d8e', '9d4ce312-39c4-362e-83a8-3ac05654a99f', 'Group C', 60, 'Room 305', 30, '2019-01-01T12:00:00Z', '2019-01-15T12:00:00Z', NULL) ON CONFLICT DO NOTHING;
SET session_replication_role = 'origin';
