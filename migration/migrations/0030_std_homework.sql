-- Migration for std_homework table derived from stdHomework.json
SET session_replication_role = 'replica';

CREATE TABLE IF NOT EXISTS public.std_homework (
    "id" TEXT PRIMARY KEY,
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
    "late_submission" BOOLEAN
);

INSERT INTO public.std_homework ("id", "class", "section", "subject", "homework_title", "assigned_by", "homework_date", "submission_date", "evaluation_date", "status", "grade", "feedback", "attachments", "late_submission") VALUES ('01', 'Class 1', 'A', 'Business studies', 'Introduction to Business Concepts', 'Mr. Smith', '2018-02-25T14:22:18Z', '2018-03-20T14:22:18Z', '2018-03-12T14:22:18Z', 'Complete', 'A', 'Great job! Keep up the good work.', 'link_to_document1.pdf', false) ON CONFLICT DO NOTHING;
INSERT INTO public.std_homework ("id", "class", "section", "subject", "homework_title", "assigned_by", "homework_date", "submission_date", "evaluation_date", "status", "grade", "feedback", "attachments", "late_submission") VALUES ('02', 'Class 1', 'A', 'Mathematics', 'Algebra Problems', 'Ms. Johnson', '2018-02-25T14:22:18Z', '2018-03-20T14:22:18Z', '2018-03-12T14:22:18Z', 'Incomplete', NULL, NULL, NULL, false) ON CONFLICT DO NOTHING;
INSERT INTO public.std_homework ("id", "class", "section", "subject", "homework_title", "assigned_by", "homework_date", "submission_date", "evaluation_date", "status", "grade", "feedback", "attachments", "late_submission") VALUES ('03', 'Class 1', 'A', 'Chemistry', 'Chemical Reactions', 'Dr. Brown', '2018-02-25T14:22:18Z', '2018-03-20T14:22:18Z', '2018-03-12T14:22:18Z', 'Incomplete', NULL, NULL, NULL, false) ON CONFLICT DO NOTHING;
INSERT INTO public.std_homework ("id", "class", "section", "subject", "homework_title", "assigned_by", "homework_date", "submission_date", "evaluation_date", "status", "grade", "feedback", "attachments", "late_submission") VALUES ('04', 'Class 1', 'A', 'Biology', 'Cell Structure', 'Ms. Green', '2018-02-25T14:22:18Z', '2018-03-20T14:22:18Z', '2018-03-12T14:22:18Z', 'Complete', 'B+', 'Good understanding of the topic.', NULL, false) ON CONFLICT DO NOTHING;
INSERT INTO public.std_homework ("id", "class", "section", "subject", "homework_title", "assigned_by", "homework_date", "submission_date", "evaluation_date", "status", "grade", "feedback", "attachments", "late_submission") VALUES ('05', 'Class 1', 'A', 'Business studies', 'Marketing Strategies', 'Mr. Smith', '2018-02-25T14:22:18Z', '2018-03-20T14:22:18Z', '2018-03-12T14:22:18Z', 'Complete', 'A', 'Excellent analysis!', 'link_to_document2.pdf', false) ON CONFLICT DO NOTHING;
INSERT INTO public.std_homework ("id", "class", "section", "subject", "homework_title", "assigned_by", "homework_date", "submission_date", "evaluation_date", "status", "grade", "feedback", "attachments", "late_submission") VALUES ('06', 'Class 1', 'A', 'Painting', 'Landscape Painting', 'Mr. Art', '2018-02-25T14:22:18Z', '2018-03-20T14:22:18Z', '2018-03-12T14:22:18Z', 'Incomplete', NULL, NULL, NULL, false) ON CONFLICT DO NOTHING;
INSERT INTO public.std_homework ("id", "class", "section", "subject", "homework_title", "assigned_by", "homework_date", "submission_date", "evaluation_date", "status", "grade", "feedback", "attachments", "late_submission") VALUES ('07', 'Class 1', 'A', 'Biology', 'Plant Biology', 'Ms. Green', '2018-02-25T14:22:18Z', '2018-03-20T14:22:18Z', '2018-03-12T14:22:18Z', 'Complete', 'A-', 'Very good work!', NULL, false) ON CONFLICT DO NOTHING;
INSERT INTO public.std_homework ("id", "class", "section", "subject", "homework_title", "assigned_by", "homework_date", "submission_date", "evaluation_date", "status", "grade", "feedback", "attachments", "late_submission") VALUES ('08', 'Class 1', 'A', 'Computer studies', 'Introduction to Programming', 'Ms. Tech', '2018-02-25T14:22:18Z', '2018-03-20T14:22:18Z', '2018-03-12T14:22:18Z', 'Complete', 'A', 'Well done!', NULL, false) ON CONFLICT DO NOTHING;
INSERT INTO public.std_homework ("id", "class", "section", "subject", "homework_title", "assigned_by", "homework_date", "submission_date", "evaluation_date", "status", "grade", "feedback", "attachments", "late_submission") VALUES ('09', 'Class 1', 'A', 'Science', 'Physics Concepts', 'Mr. White', '2018-02-25T14:22:18Z', '2018-03-20T14:22:18Z', '2018-03-12T14:22:18Z', 'Complete', 'B', 'Good effort!', NULL, false) ON CONFLICT DO NOTHING;
INSERT INTO public.std_homework ("id", "class", "section", "subject", "homework_title", "assigned_by", "homework_date", "submission_date", "evaluation_date", "status", "grade", "feedback", "attachments", "late_submission") VALUES ('10', 'Class 1', 'A', 'Painting', 'Abstract Art', 'Mr. Art', '2018-02-25T14:22:18Z', '2018-03-20T14:22:18Z', '2018-03-12T14:22:18Z', 'Incomplete', NULL, NULL, NULL, false) ON CONFLICT DO NOTHING;
INSERT INTO public.std_homework ("id", "class", "section", "subject", "homework_title", "assigned_by", "homework_date", "submission_date", "evaluation_date", "status", "grade", "feedback", "attachments", "late_submission") VALUES ('11', 'Class 1', 'A', 'Chemistry', 'Periodic Table Project', 'Dr. Brown', '2018-02-25T14:22:18Z', '2018-03-20T14:22:18Z', '2018-03-12T14:22:18Z', 'Complete', 'B+', 'Nice presentation!', NULL, false) ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';