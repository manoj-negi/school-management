-- Migration for teacher_leave_statuses table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.teacher_leave_statuses (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "leave_type" TEXT,
    "start_date" TIMESTAMP,
    "end_date" TIMESTAMP,
    "days" INTEGER,
    "apply_date" TIMESTAMP,
    "status" TEXT,
    "reason" TEXT
);

INSERT INTO public.teacher_leave_statuses ("id", "leave_type", "start_date", "end_date", "days", "apply_date", "status", "reason") VALUES
('9e200000-0000-0000-0000-000000000001', 'Medical Leave', '2025-12-01 00:00:00', '2025-12-05 00:00:00', 5, '2025-11-25 00:00:00', 'Approved', 'Surgery') ON CONFLICT DO NOTHING;

INSERT INTO public.teacher_leave_statuses ("id", "leave_type", "start_date", "end_date", "days", "apply_date", "status", "reason") VALUES
('9e200000-0000-0000-0000-000000000002', 'Casual Leave', '2025-11-10 00:00:00', '2025-11-10 00:00:00', 1, '2025-11-08 00:00:00', 'Approved', 'Personal') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
