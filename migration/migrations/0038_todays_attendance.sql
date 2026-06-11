-- Migration for todays_attendance table derived from todays-attendance.json
SET session_replication_role = 'replica';

CREATE TABLE IF NOT EXISTS public.todays_attendance (
    "id" TEXT PRIMARY KEY,
    "img" TEXT,
    "name" TEXT,
    "first_in" TEXT,
    "break" TEXT,
    "last_out" TEXT,
    "total" TEXT,
    "status" TEXT,
    "shift" TEXT
);

INSERT INTO public.todays_attendance ("id", "img", "name", "first_in", "break", "last_out", "total", "status", "shift") VALUES ('001', 'assets/images/user/user1.jpg', 'John Deo', '10:30', '01:15', '19:37', '08:02', 'present', 'Night Shift') ON CONFLICT DO NOTHING;
INSERT INTO public.todays_attendance ("id", "img", "name", "first_in", "break", "last_out", "total", "status", "shift") VALUES ('002', 'assets/images/user/user2.jpg', 'Sarah Smith', '10:32', '01:00', '19:30', '08:10', 'absent', 'Day Shift') ON CONFLICT DO NOTHING;
INSERT INTO public.todays_attendance ("id", "img", "name", "first_in", "break", "last_out", "total", "status", "shift") VALUES ('003', 'assets/images/user/user3.jpg', 'Edna Gilbert', '10:42', '01:10', '19:32', '08:08', 'absent', 'Day Shift') ON CONFLICT DO NOTHING;
INSERT INTO public.todays_attendance ("id", "img", "name", "first_in", "break", "last_out", "total", "status", "shift") VALUES ('004', 'assets/images/user/user4.jpg', 'Shelia Osterberg', '10:38', '01:07', '19:40', '08:00', 'present', 'Night Shift') ON CONFLICT DO NOTHING;
INSERT INTO public.todays_attendance ("id", "img", "name", "first_in", "break", "last_out", "total", "status", "shift") VALUES ('005', 'assets/images/user/user5.jpg', 'Barbara Garland', '10:33', '01:15', '19:30', '08:01', 'present', 'Night Shift') ON CONFLICT DO NOTHING;
INSERT INTO public.todays_attendance ("id", "img", "name", "first_in", "break", "last_out", "total", "status", "shift") VALUES ('006', 'assets/images/user/user6.jpg', 'Sarah Smith', '10:30', '01:10', '19:37', '08:10', 'absent', 'Day Shift') ON CONFLICT DO NOTHING;
INSERT INTO public.todays_attendance ("id", "img", "name", "first_in", "break", "last_out", "total", "status", "shift") VALUES ('007', 'assets/images/user/user7.jpg', 'Marie Brodsky', '10:32', '01:05', '19:40', '08:00', 'absent', 'Day Shift') ON CONFLICT DO NOTHING;
INSERT INTO public.todays_attendance ("id", "img", "name", "first_in", "break", "last_out", "total", "status", "shift") VALUES ('008', 'assets/images/user/user8.jpg', 'Kara Thompson', '10:40', '01:07', '19:30', '08:12', 'present', 'Day Shift') ON CONFLICT DO NOTHING;
INSERT INTO public.todays_attendance ("id", "img", "name", "first_in", "break", "last_out", "total", "status", "shift") VALUES ('009', 'assets/images/user/user9.jpg', 'Joseph Nye', '10:28', '01:00', '19:32', '08:02', 'present', 'Night Shift') ON CONFLICT DO NOTHING;
INSERT INTO public.todays_attendance ("id", "img", "name", "first_in", "break", "last_out", "total", "status", "shift") VALUES ('010', 'assets/images/user/user10.jpg', 'Ricardo Wendler', '10:38', '01:15', '19:37', '08:00', 'present', 'Night Shift') ON CONFLICT DO NOTHING;
INSERT INTO public.todays_attendance ("id", "img", "name", "first_in", "break", "last_out", "total", "status", "shift") VALUES ('011', 'assets/images/user/user1.jpg', 'Brian Shelley', '10:30', '01:07', '19:38', '08:10', 'absent', 'Day Shift') ON CONFLICT DO NOTHING;
INSERT INTO public.todays_attendance ("id", "img", "name", "first_in", "break", "last_out", "total", "status", "shift") VALUES ('012', 'assets/images/user/user2.jpg', 'Theresa Bullock', '10:40', '01:00', '19:30', '08:08', 'present', 'Day Shift') ON CONFLICT DO NOTHING;
INSERT INTO public.todays_attendance ("id", "img", "name", "first_in", "break", "last_out", "total", "status", "shift") VALUES ('013', 'assets/images/user/user3.jpg', 'Jeannie Elder', '10:42', '01:05', '19:38', '08:12', 'present', 'Day Shift') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';