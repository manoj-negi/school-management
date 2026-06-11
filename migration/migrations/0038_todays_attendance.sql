-- Migration for todays_attendance table derived from todays-attendance.json
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.todays_attendance (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "img" TEXT,
    "name" TEXT,
    "first_in" TEXT,
    "break" TEXT,
    "last_out" TEXT,
    "total" TEXT,
    "status" TEXT,
    "shift" TEXT
);
INSERT INTO public.todays_attendance ("id", "img", "name", "first_in", "break", "last_out", "total", "status", "shift") VALUES ('dd7dc273-a79d-3bb2-a131-0a06addfa406', 'assets/images/user/user1.jpg', 'John Deo', '10:30', '01:15', '19:37', '08:02', 'present', 'Night Shift') ON CONFLICT DO NOTHING;
INSERT INTO public.todays_attendance ("id", "img", "name", "first_in", "break", "last_out", "total", "status", "shift") VALUES ('7ed9c518-22cc-3229-afe8-80d64fa39464', 'assets/images/user/user2.jpg', 'Sarah Smith', '10:32', '01:00', '19:30', '08:10', 'absent', 'Day Shift') ON CONFLICT DO NOTHING;
INSERT INTO public.todays_attendance ("id", "img", "name", "first_in", "break", "last_out", "total", "status", "shift") VALUES ('202c0d1c-2a47-3255-8464-10130ef79056', 'assets/images/user/user3.jpg', 'Edna Gilbert', '10:42', '01:10', '19:32', '08:08', 'absent', 'Day Shift') ON CONFLICT DO NOTHING;
INSERT INTO public.todays_attendance ("id", "img", "name", "first_in", "break", "last_out", "total", "status", "shift") VALUES ('61b193fb-f96d-3f0b-b487-62934556d125', 'assets/images/user/user4.jpg', 'Shelia Osterberg', '10:38', '01:07', '19:40', '08:00', 'present', 'Night Shift') ON CONFLICT DO NOTHING;
INSERT INTO public.todays_attendance ("id", "img", "name", "first_in", "break", "last_out", "total", "status", "shift") VALUES ('92994430-ff9b-30f1-8c10-9c385e66e84c', 'assets/images/user/user5.jpg', 'Barbara Garland', '10:33', '01:15', '19:30', '08:01', 'present', 'Night Shift') ON CONFLICT DO NOTHING;
INSERT INTO public.todays_attendance ("id", "img", "name", "first_in", "break", "last_out", "total", "status", "shift") VALUES ('a0ce8afe-65e7-3a9c-9cd5-ba592feeefce', 'assets/images/user/user6.jpg', 'Sarah Smith', '10:30', '01:10', '19:37', '08:10', 'absent', 'Day Shift') ON CONFLICT DO NOTHING;
INSERT INTO public.todays_attendance ("id", "img", "name", "first_in", "break", "last_out", "total", "status", "shift") VALUES ('bd20bc9b-125a-34f3-882f-373690f29492', 'assets/images/user/user7.jpg', 'Marie Brodsky', '10:32', '01:05', '19:40', '08:00', 'absent', 'Day Shift') ON CONFLICT DO NOTHING;
INSERT INTO public.todays_attendance ("id", "img", "name", "first_in", "break", "last_out", "total", "status", "shift") VALUES ('32933acb-5358-3c2a-a20d-a1b2469367b7', 'assets/images/user/user8.jpg', 'Kara Thompson', '10:40', '01:07', '19:30', '08:12', 'present', 'Day Shift') ON CONFLICT DO NOTHING;
INSERT INTO public.todays_attendance ("id", "img", "name", "first_in", "break", "last_out", "total", "status", "shift") VALUES ('53ced13d-1f62-3fe5-907c-6bcce54f939a', 'assets/images/user/user9.jpg', 'Joseph Nye', '10:28', '01:00', '19:32', '08:02', 'present', 'Night Shift') ON CONFLICT DO NOTHING;
INSERT INTO public.todays_attendance ("id", "img", "name", "first_in", "break", "last_out", "total", "status", "shift") VALUES ('6f0c9a3d-eacf-3c5c-9d02-542f156ff922', 'assets/images/user/user10.jpg', 'Ricardo Wendler', '10:38', '01:15', '19:37', '08:00', 'present', 'Night Shift') ON CONFLICT DO NOTHING;
INSERT INTO public.todays_attendance ("id", "img", "name", "first_in", "break", "last_out", "total", "status", "shift") VALUES ('a974b9ec-6c41-3c2d-b7ac-7f8166e931fb', 'assets/images/user/user1.jpg', 'Brian Shelley', '10:30', '01:07', '19:38', '08:10', 'absent', 'Day Shift') ON CONFLICT DO NOTHING;
INSERT INTO public.todays_attendance ("id", "img", "name", "first_in", "break", "last_out", "total", "status", "shift") VALUES ('bc2a5381-2596-3905-84bb-9a32991aa605', 'assets/images/user/user2.jpg', 'Theresa Bullock', '10:40', '01:00', '19:30', '08:08', 'present', 'Day Shift') ON CONFLICT DO NOTHING;
INSERT INTO public.todays_attendance ("id", "img", "name", "first_in", "break", "last_out", "total", "status", "shift") VALUES ('dac3d036-94ed-34a5-9b1a-1ee0f3e2d61f', 'assets/images/user/user3.jpg', 'Jeannie Elder', '10:42', '01:05', '19:38', '08:12', 'present', 'Day Shift') ON CONFLICT DO NOTHING;
SET session_replication_role = 'origin';
