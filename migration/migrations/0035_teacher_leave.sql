-- Migration for teacher_leave table derived from teacher-leave.json
SET session_replication_role = 'replica';

CREATE TABLE IF NOT EXISTS public.teacher_leave (
    "leave_id" INTEGER,
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

INSERT INTO public.teacher_leave ("leave_id", "leave_type", "start_date", "end_date", "total_days", "status", "date_submitted", "reason_for_leave", "approver", "comments") VALUES (1, 'Sick Leave', '2024-10-01', '2024-10-05', 5, 'Approved', '2024-09-25', 'Flu', 'Principal Smith', 'Get well soon!') ON CONFLICT DO NOTHING;
INSERT INTO public.teacher_leave ("leave_id", "leave_type", "start_date", "end_date", "total_days", "status", "date_submitted", "reason_for_leave", "approver", "comments") VALUES (2, 'Personal Leave', '2024-10-10', '2024-10-12', 3, 'Pending', '2024-10-01', 'Family commitment', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.teacher_leave ("leave_id", "leave_type", "start_date", "end_date", "total_days", "status", "date_submitted", "reason_for_leave", "approver", "comments") VALUES (3, 'Vacation', '2024-10-15', '2024-10-20', 6, 'Rejected', '2024-10-05', 'Pre-planned trip', 'Principal Smith', 'Schedule conflicts with school events.') ON CONFLICT DO NOTHING;
INSERT INTO public.teacher_leave ("leave_id", "leave_type", "start_date", "end_date", "total_days", "status", "date_submitted", "reason_for_leave", "approver", "comments") VALUES (4, 'Sick Leave', '2024-10-07', '2024-10-09', 3, 'Approved', '2024-10-01', 'Medical procedure', 'Principal Smith', 'All the best for your recovery.') ON CONFLICT DO NOTHING;
INSERT INTO public.teacher_leave ("leave_id", "leave_type", "start_date", "end_date", "total_days", "status", "date_submitted", "reason_for_leave", "approver", "comments") VALUES (5, 'Vacation', '2024-11-01', '2024-11-05', 5, 'Approved', '2024-10-02', 'Family reunion', 'Principal Smith', 'Enjoy your time!') ON CONFLICT DO NOTHING;
INSERT INTO public.teacher_leave ("leave_id", "leave_type", "start_date", "end_date", "total_days", "status", "date_submitted", "reason_for_leave", "approver", "comments") VALUES (6, 'Personal Leave', '2024-11-10', '2024-11-12', 3, 'Pending', '2024-10-05', 'Home repairs', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.teacher_leave ("leave_id", "leave_type", "start_date", "end_date", "total_days", "status", "date_submitted", "reason_for_leave", "approver", "comments") VALUES (7, 'Sick Leave', '2024-11-15', '2024-11-17', 3, 'Approved', '2024-11-01', 'Migraine', 'Principal Smith', 'Take care!') ON CONFLICT DO NOTHING;
INSERT INTO public.teacher_leave ("leave_id", "leave_type", "start_date", "end_date", "total_days", "status", "date_submitted", "reason_for_leave", "approver", "comments") VALUES (8, 'Vacation', '2024-12-01', '2024-12-05', 5, 'Approved', '2024-11-10', 'Holiday trip', 'Principal Smith', 'Safe travels!') ON CONFLICT DO NOTHING;
INSERT INTO public.teacher_leave ("leave_id", "leave_type", "start_date", "end_date", "total_days", "status", "date_submitted", "reason_for_leave", "approver", "comments") VALUES (9, 'Personal Leave', '2024-12-10', '2024-12-12', 3, 'Pending', '2024-11-20', 'Appointment', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.teacher_leave ("leave_id", "leave_type", "start_date", "end_date", "total_days", "status", "date_submitted", "reason_for_leave", "approver", "comments") VALUES (10, 'Sick Leave', '2024-12-15', '2024-12-17', 3, 'Approved', '2024-12-01', 'Flu', 'Principal Smith', 'Wishing you a speedy recovery!') ON CONFLICT DO NOTHING;
INSERT INTO public.teacher_leave ("leave_id", "leave_type", "start_date", "end_date", "total_days", "status", "date_submitted", "reason_for_leave", "approver", "comments") VALUES (11, 'Vacation', '2025-01-05', '2025-01-10', 6, 'Pending', '2024-12-05', 'Winter getaway', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.teacher_leave ("leave_id", "leave_type", "start_date", "end_date", "total_days", "status", "date_submitted", "reason_for_leave", "approver", "comments") VALUES (12, 'Personal Leave', '2025-01-15', '2025-01-16', 2, 'Approved', '2024-12-10', 'Personal matter', 'Principal Smith', 'Noted.') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';