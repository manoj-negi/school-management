-- Migration for staff_attendance table derived from staff-attendance.json
SET session_replication_role = 'replica';

CREATE TABLE IF NOT EXISTS public.staff_attendance (
    "id" TEXT PRIMARY KEY,
    "img" TEXT,
    "name" TEXT,
    "employee_id" TEXT,
    "designation" TEXT,
    "date" TIMESTAMP,
    "check_in" TEXT,
    "break" TEXT,
    "check_out" TEXT,
    "total" TEXT,
    "shift" TEXT,
    "late_arrival" TEXT,
    "early_departure" TEXT,
    "absence_reason" TEXT,
    "overtime" TEXT,
    "total_breaks" TEXT,
    "remarks" TEXT,
    "attendance_status" TEXT,
    "department" TEXT
);

INSERT INTO public.staff_attendance ("id", "img", "name", "employee_id", "designation", "date", "check_in", "break", "check_out", "total", "shift", "late_arrival", "early_departure", "absence_reason", "overtime", "total_breaks", "remarks", "attendance_status", "department") VALUES ('001', 'assets/images/user/user1.jpg', 'John Deo', 'E12345', 'Admin Officer', '2024-10-08', '10:30', '01:15', '19:37', '08:02', 'Day', '00:15', NULL, NULL, '00:30', '1', 'N/A', 'Present', 'Admin') ON CONFLICT DO NOTHING;
INSERT INTO public.staff_attendance ("id", "img", "name", "employee_id", "designation", "date", "check_in", "break", "check_out", "total", "shift", "late_arrival", "early_departure", "absence_reason", "overtime", "total_breaks", "remarks", "attendance_status", "department") VALUES ('002', 'assets/images/user/user2.jpg', 'Sarah Smith', 'E12346', 'Library Assistant', '2024-10-08', '10:32', '01:00', '19:30', '08:10', 'Day', '00:02', NULL, 'Sick Leave', NULL, '1', 'N/A', 'Absent', 'Library') ON CONFLICT DO NOTHING;
INSERT INTO public.staff_attendance ("id", "img", "name", "employee_id", "designation", "date", "check_in", "break", "check_out", "total", "shift", "late_arrival", "early_departure", "absence_reason", "overtime", "total_breaks", "remarks", "attendance_status", "department") VALUES ('003', 'assets/images/user/user3.jpg', 'Edna Gilbert', 'E12347', 'Library Clerk', '2024-10-08', '10:42', '01:10', '19:32', '08:08', 'Day', '00:12', NULL, 'Vacation', NULL, '1', 'N/A', 'Absent', 'Library') ON CONFLICT DO NOTHING;
INSERT INTO public.staff_attendance ("id", "img", "name", "employee_id", "designation", "date", "check_in", "break", "check_out", "total", "shift", "late_arrival", "early_departure", "absence_reason", "overtime", "total_breaks", "remarks", "attendance_status", "department") VALUES ('004', 'assets/images/user/user4.jpg', 'Shelia Osterberg', 'E12348', 'Math Teacher', '2024-10-08', '10:38', '01:07', '19:40', '08:00', 'Day', NULL, NULL, NULL, NULL, '1', 'N/A', 'Present', 'Teaching') ON CONFLICT DO NOTHING;
INSERT INTO public.staff_attendance ("id", "img", "name", "employee_id", "designation", "date", "check_in", "break", "check_out", "total", "shift", "late_arrival", "early_departure", "absence_reason", "overtime", "total_breaks", "remarks", "attendance_status", "department") VALUES ('005', 'assets/images/user/user5.jpg', 'Barbara Garland', 'E12349', 'English Teacher', '2024-10-08', '10:33', '01:15', '19:30', '08:01', 'Day', NULL, NULL, NULL, NULL, '1', 'N/A', 'Present', 'Teaching') ON CONFLICT DO NOTHING;
INSERT INTO public.staff_attendance ("id", "img", "name", "employee_id", "designation", "date", "check_in", "break", "check_out", "total", "shift", "late_arrival", "early_departure", "absence_reason", "overtime", "total_breaks", "remarks", "attendance_status", "department") VALUES ('006', 'assets/images/user/user6.jpg', 'Sarah Smith', 'E12350', 'Teaching Assistant', '2024-10-08', '10:30', '01:10', '19:37', '08:10', 'Day', NULL, NULL, 'Personal Leave', NULL, '1', 'N/A', 'Absent', 'Teaching') ON CONFLICT DO NOTHING;
INSERT INTO public.staff_attendance ("id", "img", "name", "employee_id", "designation", "date", "check_in", "break", "check_out", "total", "shift", "late_arrival", "early_departure", "absence_reason", "overtime", "total_breaks", "remarks", "attendance_status", "department") VALUES ('007', 'assets/images/user/user7.jpg', 'Marie Brodsky', 'E12351', 'Sports Coach', '2024-10-08', '10:32', '01:05', '19:40', '08:00', 'Day', NULL, NULL, NULL, NULL, '1', 'N/A', 'Absent', 'Sport') ON CONFLICT DO NOTHING;
INSERT INTO public.staff_attendance ("id", "img", "name", "employee_id", "designation", "date", "check_in", "break", "check_out", "total", "shift", "late_arrival", "early_departure", "absence_reason", "overtime", "total_breaks", "remarks", "attendance_status", "department") VALUES ('008', 'assets/images/user/user8.jpg', 'Kara Thompson', 'E12352', 'Library Assistant', '2024-10-08', '10:40', '01:07', '19:30', '08:12', 'Day', NULL, NULL, NULL, NULL, '1', 'N/A', 'Present', 'Library') ON CONFLICT DO NOTHING;
INSERT INTO public.staff_attendance ("id", "img", "name", "employee_id", "designation", "date", "check_in", "break", "check_out", "total", "shift", "late_arrival", "early_departure", "absence_reason", "overtime", "total_breaks", "remarks", "attendance_status", "department") VALUES ('009', 'assets/images/user/user9.jpg', 'Joseph Nye', 'E12353', 'Library Clerk', '2024-10-08', '10:28', '01:00', '19:32', '08:02', 'Day', NULL, NULL, NULL, NULL, '1', 'N/A', 'Present', 'Library') ON CONFLICT DO NOTHING;
INSERT INTO public.staff_attendance ("id", "img", "name", "employee_id", "designation", "date", "check_in", "break", "check_out", "total", "shift", "late_arrival", "early_departure", "absence_reason", "overtime", "total_breaks", "remarks", "attendance_status", "department") VALUES ('010', 'assets/images/user/user10.jpg', 'Ricardo Wendler', 'E12354', 'Placement Coordinator', '2024-10-08', '10:38', '01:15', '19:37', '08:00', 'Day', NULL, NULL, NULL, NULL, '1', 'N/A', 'Present', 'Placement') ON CONFLICT DO NOTHING;
INSERT INTO public.staff_attendance ("id", "img", "name", "employee_id", "designation", "date", "check_in", "break", "check_out", "total", "shift", "late_arrival", "early_departure", "absence_reason", "overtime", "total_breaks", "remarks", "attendance_status", "department") VALUES ('011', 'assets/images/user/user1.jpg', 'Brian Shelley', 'E12355', 'Teaching Assistant', '2024-10-08', '10:30', '01:07', '19:38', '08:10', 'Day', NULL, NULL, 'Sick Leave', NULL, '1', 'N/A', 'Absent', 'Teaching') ON CONFLICT DO NOTHING;
INSERT INTO public.staff_attendance ("id", "img", "name", "employee_id", "designation", "date", "check_in", "break", "check_out", "total", "shift", "late_arrival", "early_departure", "absence_reason", "overtime", "total_breaks", "remarks", "attendance_status", "department") VALUES ('012', 'assets/images/user/user2.jpg', 'Theresa Bullock', 'E12356', 'Math Teacher', '2024-10-08', '10:40', '01:00', '19:30', '08:08', 'Day', NULL, NULL, NULL, NULL, '1', 'N/A', 'Present', 'Teaching') ON CONFLICT DO NOTHING;
INSERT INTO public.staff_attendance ("id", "img", "name", "employee_id", "designation", "date", "check_in", "break", "check_out", "total", "shift", "late_arrival", "early_departure", "absence_reason", "overtime", "total_breaks", "remarks", "attendance_status", "department") VALUES ('013', 'assets/images/user/user3.jpg', 'Jeannie Elder', 'E12357', 'Sports Instructor', '2024-10-08', '10:42', '01:05', '19:38', '08:12', 'Day', NULL, NULL, NULL, NULL, '1', 'N/A', 'Present', 'Sport') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';