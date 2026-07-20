-- Migration for student_timetables table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.student_timetables (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "day" TEXT,
    "date_label" TEXT,
    "subject" TEXT,
    "time" TEXT,
    "room" TEXT,
    "teacher" TEXT,
    "type" TEXT,
    "color_class" TEXT,
    "icon" TEXT
);

INSERT INTO public.student_timetables ("id", "day", "date_label", "subject", "time", "room", "teacher", "type", "color_class", "icon") VALUES
('9e500000-0000-0000-0000-000000000001', 'Monday', 'Dec 30', 'Chemistry', '10:00 AM - 10:45 AM', '101', 'Dr. Sarah Wilson', 'Lecture', 'bg-green', 'fas fa-flask') ON CONFLICT DO NOTHING;

INSERT INTO public.student_timetables ("id", "day", "date_label", "subject", "time", "room", "teacher", "type", "color_class", "icon") VALUES
('9e500000-0000-0000-0000-000000000002', 'Monday', 'Dec 30', 'English', '10:45 AM - 11:30 AM', '101', 'Ms. Emily Bond', 'Seminar', 'bg-orange', 'fas fa-book') ON CONFLICT DO NOTHING;

INSERT INTO public.student_timetables ("id", "day", "date_label", "subject", "time", "room", "teacher", "type", "color_class", "icon") VALUES
('9e500000-0000-0000-0000-000000000003', 'Monday', 'Dec 30', 'Physics', '11:30 AM - 12:15 PM', '101', 'Mr. John Miller', 'Lab', 'bg-blue', 'fas fa-atom') ON CONFLICT DO NOTHING;

INSERT INTO public.student_timetables ("id", "day", "date_label", "subject", "time", "room", "teacher", "type", "color_class", "icon") VALUES
('9e500000-0000-0000-0000-000000000004', 'Tuesday', 'Dec 31', 'Computer', '01:00 PM - 01:45 PM', 'Lab 2', 'Mr. David Chen', 'Practice', 'bg-purple', 'fas fa-laptop-code') ON CONFLICT DO NOTHING;

INSERT INTO public.student_timetables ("id", "day", "date_label", "subject", "time", "room", "teacher", "type", "color_class", "icon") VALUES
('9e500000-0000-0000-0000-000000000005', 'Tuesday', 'Dec 31', 'Mathematics', '01:45 PM - 02:30 PM', '202', 'Dr. Alex Brown', 'Lecture', 'bg-indigo', 'fas fa-square-root-alt') ON CONFLICT DO NOTHING;

INSERT INTO public.student_timetables ("id", "day", "date_label", "subject", "time", "room", "teacher", "type", "color_class", "icon") VALUES
('9e500000-0000-0000-0000-000000000006', 'Wednesday', 'Jan 01', 'Geography', '09:00 AM - 09:45 AM', '301', 'Mrs. Olivia White', 'Lecture', 'bg-teal', 'fas fa-globe-americas') ON CONFLICT DO NOTHING;

INSERT INTO public.student_timetables ("id", "day", "date_label", "subject", "time", "room", "teacher", "type", "color_class", "icon") VALUES
('9e500000-0000-0000-0000-000000000007', 'Wednesday', 'Jan 01', 'History', '10:00 AM - 10:45 AM', '105', 'Mr. Robert King', 'Seminar', 'bg-brown', 'fas fa-monument') ON CONFLICT DO NOTHING;

INSERT INTO public.student_timetables ("id", "day", "date_label", "subject", "time", "room", "teacher", "type", "color_class", "icon") VALUES
('9e500000-0000-0000-0000-000000000008', 'Thursday', 'Jan 02', 'Biology', '11:00 AM - 11:45 AM', 'Bio Lab', 'Dr. Maria Garcia', 'Lab', 'bg-pink', 'fas fa-dna') ON CONFLICT DO NOTHING;

INSERT INTO public.student_timetables ("id", "day", "date_label", "subject", "time", "room", "teacher", "type", "color_class", "icon") VALUES
('9e500000-0000-0000-0000-000000000009', 'Thursday', 'Jan 02', 'Chemistry', '12:00 PM - 12:45 PM', '101', 'Dr. Sarah Wilson', 'Lecture', 'bg-green', 'fas fa-flask') ON CONFLICT DO NOTHING;

INSERT INTO public.student_timetables ("id", "day", "date_label", "subject", "time", "room", "teacher", "type", "color_class", "icon") VALUES
('9e500000-0000-0000-0000-000000000010', 'Friday', 'Jan 03', 'Art', '02:00 PM - 03:30 PM', 'Studio A', 'Ms. Sophie Turner', 'Studio', 'bg-amber', 'fas fa-palette') ON CONFLICT DO NOTHING;

INSERT INTO public.student_timetables ("id", "day", "date_label", "subject", "time", "room", "teacher", "type", "color_class", "icon") VALUES
('9e500000-0000-0000-0000-000000000011', 'Saturday', 'Jan 04', 'Physical Education', '08:30 AM - 10:00 AM', 'Main Gym', 'Coach Mike Ross', 'Practice', 'bg-red', 'fas fa-running') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
