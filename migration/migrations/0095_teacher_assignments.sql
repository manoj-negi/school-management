-- Migration for teacher_assignments table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.teacher_assignments (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "class" TEXT,
    "subject" TEXT,
    "title" TEXT,
    "assigned_date" TIMESTAMP,
    "due_date" TIMESTAMP,
    "status" TEXT,
    "submissions" INTEGER
);

INSERT INTO public.teacher_assignments ("id", "class", "subject", "title", "assigned_date", "due_date", "status", "submissions") VALUES
('96000000-0000-0000-0000-000000000001', '10A', 'Mathematics', 'Algebra Homework', '2025-12-25 00:00:00', '2025-12-28 00:00:00', 'Active', 25) ON CONFLICT DO NOTHING;

INSERT INTO public.teacher_assignments ("id", "class", "subject", "title", "assigned_date", "due_date", "status", "submissions") VALUES
('96000000-0000-0000-0000-000000000002', '11B', 'Physics', 'Newtonian Motion Project', '2025-12-24 00:00:00', '2025-12-30 00:00:00', 'Active', 15) ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
