-- Migration for student_discipline table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.student_discipline (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "img" TEXT,
    "student_name" TEXT NOT NULL,
    "incident_date" TIMESTAMP NOT NULL,
    "incident_type" TEXT NOT NULL,
    "incident_location" TEXT NOT NULL,
    "reported_by" TEXT NOT NULL,
    "action_taken" TEXT,
    "action_date" TIMESTAMP,
    "description" TEXT,
    "severity" TEXT,
    "status" TEXT
);

INSERT INTO public.student_discipline ("id", "img", "student_name", "incident_date", "incident_type", "incident_location", "reported_by", "action_taken", "action_date", "description", "severity", "status") VALUES
('111a86c8-3d0d-32d5-92b9-98783708e83a', 'assets/images/user/user1.jpg', 'John Doe', '2023-12-05T00:00:00Z', 'Late Coming', 'Main Gate', 'Gatekeeper', 'Warning', '2023-12-05T00:00:00Z', 'Arrived 15 minutes late', 'Low', 'Resolved') ON CONFLICT DO NOTHING;
INSERT INTO public.student_discipline ("id", "img", "student_name", "incident_date", "incident_type", "incident_location", "reported_by", "action_taken", "action_date", "description", "severity", "status") VALUES
('222b8564-e8a9-3c53-ab1b-29c81d1e909e', 'assets/images/user/user2.jpg', 'Sarah Smith', '2023-11-20T00:00:00Z', 'Bullying', 'Playground', 'Teacher Sarah', 'Suspension', '2023-11-21T00:00:00Z', 'Verbal abuse to a junior', 'High', 'Active') ON CONFLICT DO NOTHING;
INSERT INTO public.student_discipline ("id", "img", "student_name", "incident_date", "incident_type", "incident_location", "reported_by", "action_taken", "action_date", "description", "severity", "status") VALUES
('333c9adb-5580-36cb-b062-7911008ec587', 'assets/images/user/user3.jpg', 'Michael Brown', '2023-10-15T00:00:00Z', 'Cheating', 'Exam Hall', 'Invigilator', 'Exam Cancellation', '2023-10-16T00:00:00Z', 'Found with unauthorized materials', 'High', 'Resolved') ON CONFLICT DO NOTHING;
INSERT INTO public.student_discipline ("id", "img", "student_name", "incident_date", "incident_type", "incident_location", "reported_by", "action_taken", "action_date", "description", "severity", "status") VALUES
('444d0fc6-4059-35ed-ac35-87d5faccb3ee', 'assets/images/user/user4.jpg', 'Emily Davis', '2023-09-10T00:00:00Z', 'Uniform Violation', 'Classroom', 'Class Teacher', 'Fine', '2023-09-10T00:00:00Z', 'Not wearing proper shoes', 'Low', 'Resolved') ON CONFLICT DO NOTHING;
INSERT INTO public.student_discipline ("id", "img", "student_name", "incident_date", "incident_type", "incident_location", "reported_by", "action_taken", "action_date", "description", "severity", "status") VALUES
('5555e634-2155-3639-957f-5bbd14954368', 'assets/images/user/user5.jpg', 'David Wilson', '2023-08-25T00:00:00Z', 'Damaging Property', 'Lab', 'Lab Assistant', 'Repair Cost', '2023-08-26T00:00:00Z', 'Broke a test tube intentionally', 'Medium', 'Pending') ON CONFLICT DO NOTHING;
INSERT INTO public.student_discipline ("id", "img", "student_name", "incident_date", "incident_type", "incident_location", "reported_by", "action_taken", "action_date", "description", "severity", "status") VALUES
('666fae88-b6da-38cc-b408-148dccc5069e', 'assets/images/user/user6.jpg', 'Jessica Taylor', '2023-07-15T00:00:00Z', 'Late Coming', 'Main Gate', 'Gatekeeper', 'Parent Meeting', '2023-07-16T00:00:00Z', 'Repeated late arrival', 'Medium', 'Resolved') ON CONFLICT DO NOTHING;
INSERT INTO public.student_discipline ("id", "img", "student_name", "incident_date", "incident_type", "incident_location", "reported_by", "action_taken", "action_date", "description", "severity", "status") VALUES
('777b2bf7-f1c7-36b2-a620-9cc8566f2b66', 'assets/images/user/user7.jpg', 'Kevin Anderson', '2023-06-20T00:00:00Z', 'Insubordination', 'Classroom', 'Teacher Kevin', 'Detention', '2023-06-21T00:00:00Z', 'Refused to follow instructions', 'Medium', 'Resolved') ON CONFLICT DO NOTHING;
INSERT INTO public.student_discipline ("id", "img", "student_name", "incident_date", "incident_type", "incident_location", "reported_by", "action_taken", "action_date", "description", "severity", "status") VALUES
('888e9ec6-7a5e-30c5-ab64-56e7c2745f32', 'assets/images/user/user8.jpg', 'Linda Martinez', '2023-05-12T00:00:00Z', 'Bunking Class', 'Library', 'Librarian', 'Warning', '2023-05-13T00:00:00Z', 'Found in library during math class', 'Low', 'Resolved') ON CONFLICT DO NOTHING;
INSERT INTO public.student_discipline ("id", "img", "student_name", "incident_date", "incident_type", "incident_location", "reported_by", "action_taken", "action_date", "description", "severity", "status") VALUES
('9992fc2c-6ee0-3ec9-886c-d0f941afa042', 'assets/images/user/user9.jpg', 'Robert Thomas', '2023-04-18T00:00:00Z', 'Bullying', 'Canteen', 'Canteen Staff', 'Counseling', '2023-04-19T00:00:00Z', 'Physical altercation', 'High', 'Active') ON CONFLICT DO NOTHING;
INSERT INTO public.student_discipline ("id", "img", "student_name", "incident_date", "incident_type", "incident_location", "reported_by", "action_taken", "action_date", "description", "severity", "status") VALUES
('aaac960b-a164-30f8-92c4-5dbc1add5a44', 'assets/images/user/user10.jpg', 'Jennifer Lee', '2023-03-25T00:00:00Z', 'Uniform Violation', 'Assembly', 'Principal', 'Warning', '2023-03-25T00:00:00Z', 'Improper uniform', 'Low', 'Resolved') ON CONFLICT DO NOTHING;
INSERT INTO public.student_discipline ("id", "img", "student_name", "incident_date", "incident_type", "incident_location", "reported_by", "action_taken", "action_date", "description", "severity", "status") VALUES
('bbba960b-a164-30f8-92c4-5dbc1add5a45', 'assets/images/user/user1.jpg', 'William Garcia', '2023-02-10T00:00:00Z', 'Late Coming', 'Main Gate', 'Gatekeeper', 'Warning', '2023-02-10T00:00:00Z', 'Arrived 10 minutes late', 'Low', 'Resolved') ON CONFLICT DO NOTHING;
INSERT INTO public.student_discipline ("id", "img", "student_name", "incident_date", "incident_type", "incident_location", "reported_by", "action_taken", "action_date", "description", "severity", "status") VALUES
('cccb960b-a164-30f8-92c4-5dbc1add5a46', 'assets/images/user/user2.jpg', 'Elizabeth Young', '2023-01-15T00:00:00Z', 'Cheating', 'Classroom', 'Teacher Elizabeth', 'Parent Meeting', '2023-01-16T00:00:00Z', 'Copying homework', 'Medium', 'Resolved') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
