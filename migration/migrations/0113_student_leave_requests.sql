-- Migration for student_leave_requests table
SET session_replication_role = 'replica';

CREATE TABLE IF NOT EXISTS public.student_leave_requests (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "class_name" TEXT,
    "section" TEXT,
    "apply_date" TEXT,
    "from_date" TEXT,
    "to_date" TEXT,
    "reason" TEXT,
    "status" TEXT
);

INSERT INTO public.student_leave_requests ("id", "class_name", "section", "apply_date", "from_date", "to_date", "reason", "status") VALUES
('9e800000-0000-0000-0000-000000000001', '10th Standard', 'A', '2026-07-10', '2026-07-12', '2026-07-14', 'Family Function', 'Approved') ON CONFLICT DO NOTHING;

INSERT INTO public.student_leave_requests ("id", "class_name", "section", "apply_date", "from_date", "to_date", "reason", "status") VALUES
('9e800000-0000-0000-0000-000000000002', '10th Standard', 'A', '2026-07-15', '2026-07-16', '2026-07-16', 'Sick Leave', 'Pending') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
