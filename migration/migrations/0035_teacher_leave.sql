-- Migration for teacher_leave table derived from teacher-leave.json
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.teacher_leave (
    "leave_id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "leave_type" TEXT,
    "start_date" TIMESTAMP,
    "end_date" TIMESTAMP,
    "total_days" INTEGER,
    "status" TEXT,
    "date_submitted" TIMESTAMP,
    "reason_for_leave" TEXT,
    "approver" TEXT,
    "comments" TEXT
);
INSERT INTO public.teacher_leave ("leave_id", "leave_type", "start_date", "end_date", "total_days", "status", "date_submitted", "reason_for_leave", "approver", "comments") VALUES ('25f91bdc-d5fc-3489-ae72-562d87ec88c3', 'Sick Leave', '2024-10-01', '2024-10-05', 5, 'Approved', '2024-09-25', 'Flu', 'Principal Smith', 'Get well soon!') ON CONFLICT DO NOTHING;
INSERT INTO public.teacher_leave ("leave_id", "leave_type", "start_date", "end_date", "total_days", "status", "date_submitted", "reason_for_leave", "approver", "comments") VALUES ('edd8bea2-4baf-32b9-b4fa-3a7473daefeb', 'Personal Leave', '2024-10-10', '2024-10-12', 3, 'Pending', '2024-10-01', 'Family commitment', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.teacher_leave ("leave_id", "leave_type", "start_date", "end_date", "total_days", "status", "date_submitted", "reason_for_leave", "approver", "comments") VALUES ('328fff36-a180-345a-835a-915dc4513da1', 'Vacation', '2024-10-15', '2024-10-20', 6, 'Rejected', '2024-10-05', 'Pre-planned trip', 'Principal Smith', 'Schedule conflicts with school events.') ON CONFLICT DO NOTHING;
INSERT INTO public.teacher_leave ("leave_id", "leave_type", "start_date", "end_date", "total_days", "status", "date_submitted", "reason_for_leave", "approver", "comments") VALUES ('77cfe491-a88e-3a4b-8f16-e4dae30f96b8', 'Sick Leave', '2024-10-07', '2024-10-09', 3, 'Approved', '2024-10-01', 'Medical procedure', 'Principal Smith', 'All the best for your recovery.') ON CONFLICT DO NOTHING;
INSERT INTO public.teacher_leave ("leave_id", "leave_type", "start_date", "end_date", "total_days", "status", "date_submitted", "reason_for_leave", "approver", "comments") VALUES ('808e0549-594c-361e-b6f8-dda4aa2fee99', 'Vacation', '2024-11-01', '2024-11-05', 5, 'Approved', '2024-10-02', 'Family reunion', 'Principal Smith', 'Enjoy your time!') ON CONFLICT DO NOTHING;
INSERT INTO public.teacher_leave ("leave_id", "leave_type", "start_date", "end_date", "total_days", "status", "date_submitted", "reason_for_leave", "approver", "comments") VALUES ('38d68847-1ddf-3582-b3a9-2dd521e080fb', 'Personal Leave', '2024-11-10', '2024-11-12', 3, 'Pending', '2024-10-05', 'Home repairs', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.teacher_leave ("leave_id", "leave_type", "start_date", "end_date", "total_days", "status", "date_submitted", "reason_for_leave", "approver", "comments") VALUES ('408a63ea-e8a3-3e6b-82b8-9e146106a596', 'Sick Leave', '2024-11-15', '2024-11-17', 3, 'Approved', '2024-11-01', 'Migraine', 'Principal Smith', 'Take care!') ON CONFLICT DO NOTHING;
INSERT INTO public.teacher_leave ("leave_id", "leave_type", "start_date", "end_date", "total_days", "status", "date_submitted", "reason_for_leave", "approver", "comments") VALUES ('840888cc-24a3-3ba0-868b-6b95dde139c8', 'Vacation', '2024-12-01', '2024-12-05', 5, 'Approved', '2024-11-10', 'Holiday trip', 'Principal Smith', 'Safe travels!') ON CONFLICT DO NOTHING;
INSERT INTO public.teacher_leave ("leave_id", "leave_type", "start_date", "end_date", "total_days", "status", "date_submitted", "reason_for_leave", "approver", "comments") VALUES ('978ddeec-8de3-3667-8679-099ff5e3ea93', 'Personal Leave', '2024-12-10', '2024-12-12', 3, 'Pending', '2024-11-20', 'Appointment', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.teacher_leave ("leave_id", "leave_type", "start_date", "end_date", "total_days", "status", "date_submitted", "reason_for_leave", "approver", "comments") VALUES ('236c3a37-fdfe-396d-b574-e38d3a5be6f3', 'Sick Leave', '2024-12-15', '2024-12-17', 3, 'Approved', '2024-12-01', 'Flu', 'Principal Smith', 'Wishing you a speedy recovery!') ON CONFLICT DO NOTHING;
INSERT INTO public.teacher_leave ("leave_id", "leave_type", "start_date", "end_date", "total_days", "status", "date_submitted", "reason_for_leave", "approver", "comments") VALUES ('c86f165d-79f2-3f75-9224-8fee3eaf88db', 'Vacation', '2025-01-05', '2025-01-10', 6, 'Pending', '2024-12-05', 'Winter getaway', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.teacher_leave ("leave_id", "leave_type", "start_date", "end_date", "total_days", "status", "date_submitted", "reason_for_leave", "approver", "comments") VALUES ('3c0698b5-7d06-34e7-bf0a-68f92f98f74b', 'Personal Leave', '2025-01-15', '2025-01-16', 2, 'Approved', '2024-12-10', 'Personal matter', 'Principal Smith', 'Noted.') ON CONFLICT DO NOTHING;
SET session_replication_role = 'origin';
