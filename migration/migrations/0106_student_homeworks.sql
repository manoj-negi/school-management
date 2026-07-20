-- Migration for student_homeworks table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.student_homeworks (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "class" TEXT,
    "section" TEXT,
    "subject" TEXT,
    "homework_title" TEXT,
    "assigned_by" TEXT,
    "homework_date" TIMESTAMP,
    "submission_date" TIMESTAMP,
    "evaluation_date" TIMESTAMP,
    "status" TEXT,
    "grade" TEXT,
    "feedback" TEXT,
    "attachments" TEXT,
    "late_submission" BOOLEAN DEFAULT false
);

INSERT INTO public.student_homeworks ("id", "class", "section", "subject", "homework_title", "assigned_by", "homework_date", "submission_date", "evaluation_date", "status", "grade", "feedback", "attachments", "late_submission") VALUES
('9e400000-0000-0000-0000-000000000001', 'Class 1', 'A', 'Business studies', 'Introduction to Business Concepts', 'Mr. Smith', '2018-02-25 14:22:18', '2018-03-20 14:22:18', '2018-03-12 14:22:18', 'Complete', 'A', 'Great job! Keep up the good work.', 'link_to_document1.pdf', false) ON CONFLICT DO NOTHING;

INSERT INTO public.student_homeworks ("id", "class", "section", "subject", "homework_title", "assigned_by", "homework_date", "submission_date", "evaluation_date", "status", "grade", "feedback", "attachments", "late_submission") VALUES
('9e400000-0000-0000-0000-000000000002', 'Class 1', 'A', 'Mathematics', 'Algebra Problems', 'Ms. Johnson', '2018-02-25 14:22:18', '2018-03-20 14:22:18', '2018-03-12 14:22:18', 'Incomplete', '', '', '', false) ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
