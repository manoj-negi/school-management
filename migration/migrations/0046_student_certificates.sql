-- Migration for student_certificates table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.student_certificates (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "img" TEXT,
    "student_name" TEXT,
    "certificate_type" TEXT,
    "certificate_no" TEXT,
    "issued_by" TEXT,
    "issue_date" TIMESTAMP,
    "expiry_date" TIMESTAMP,
    "category" TEXT,
    "description" TEXT,
    "status" TEXT
);

INSERT INTO public.student_certificates ("id", "img", "student_name", "certificate_type", "certificate_no", "issued_by", "issue_date", "expiry_date", "category", "description", "status") VALUES
('555d86c8-3d0d-32d5-92b9-98783708e83a', 'assets/images/user/user1.jpg', 'John Doe', 'Merit Certificate', 'CERT-001', 'Principal', '2023-12-01T00:00:00Z', '2025-01-20T00:00:00Z', 'Academic', 'Academic excellence in Mathematics', 'Active') ON CONFLICT DO NOTHING;
INSERT INTO public.student_certificates ("id", "img", "student_name", "certificate_type", "certificate_no", "issued_by", "issue_date", "expiry_date", "category", "description", "status") VALUES
('90b58564-e8a9-3c53-ab1b-29c81d1e909e', 'assets/images/user/user2.jpg', 'Sarah Smith', 'Sports Certificate', 'CERT-002', 'Sports Coach', '2023-11-15T00:00:00Z', '2025-01-20T00:00:00Z', 'Sports', 'First place in 100m sprint', 'Active') ON CONFLICT DO NOTHING;
INSERT INTO public.student_certificates ("id", "img", "student_name", "certificate_type", "certificate_no", "issued_by", "issue_date", "expiry_date", "category", "description", "status") VALUES
('19d59adb-5580-36cb-b062-7911008ec587', 'assets/images/user/user3.jpg', 'Michael Brown', 'Participation', 'CERT-003', 'Event Coordinator', '2023-10-20T00:00:00Z', '2025-01-20T00:00:00Z', 'Extra-curricular', 'Annual Science Fair', 'Active') ON CONFLICT DO NOTHING;
INSERT INTO public.student_certificates ("id", "img", "student_name", "certificate_type", "certificate_no", "issued_by", "issue_date", "expiry_date", "category", "description", "status") VALUES
('8ae00fc6-4059-35ed-ac35-87d5faccb3ee', 'assets/images/user/user4.jpg', 'Emily Davis', 'Transfer Certificate', 'TC-2023-01', 'Registrar', '2023-09-05T00:00:00Z', '2025-01-20T00:00:00Z', 'Administrative', 'Transfer to another school', 'Closed') ON CONFLICT DO NOTHING;
INSERT INTO public.student_certificates ("id", "img", "student_name", "certificate_type", "certificate_no", "issued_by", "issue_date", "expiry_date", "category", "description", "status") VALUES
('2459f634-2155-3639-957f-5bbd14954368', 'assets/images/user/user5.jpg', 'David Wilson', 'Conduct Certificate', 'CERT-004', 'Class Teacher', '2023-08-12T00:00:00Z', '2025-01-20T00:00:00Z', 'General', 'Exemplary behavior', 'Active') ON CONFLICT DO NOTHING;
INSERT INTO public.student_certificates ("id", "img", "student_name", "certificate_type", "certificate_no", "issued_by", "issue_date", "expiry_date", "category", "description", "status") VALUES
('a468ae88-b6da-38cc-b408-148dccc5069e', 'assets/images/user/user6.jpg', 'Jessica Taylor', 'Merit Certificate', 'CERT-005', 'Principal', '2023-07-20T00:00:00Z', '2025-01-20T00:00:00Z', 'Academic', 'Top performer in Science', 'Active') ON CONFLICT DO NOTHING;
INSERT INTO public.student_certificates ("id", "img", "student_name", "certificate_type", "certificate_no", "issued_by", "issue_date", "expiry_date", "category", "description", "status") VALUES
('28b72bf7-f1c7-36b2-a620-9cc8566f2b66', 'assets/images/user/user7.jpg', 'Kevin Anderson', 'Sports Certificate', 'CERT-006', 'Sports Coach', '2023-06-15T00:00:00Z', '2025-01-20T00:00:00Z', 'Sports', 'Captain of Football Team', 'Active') ON CONFLICT DO NOTHING;
INSERT INTO public.student_certificates ("id", "img", "student_name", "certificate_type", "certificate_no", "issued_by", "issue_date", "expiry_date", "category", "description", "status") VALUES
('5ce99ec6-7a5e-30c5-ab64-56e7c2745f32', 'assets/images/user/user8.jpg', 'Linda Martinez', 'Participation', 'CERT-007', 'Music Teacher', '2023-05-10T00:00:00Z', '2025-01-20T00:00:00Z', 'Extra-curricular', 'Inter-school Music Competition', 'Active') ON CONFLICT DO NOTHING;
INSERT INTO public.student_certificates ("id", "img", "student_name", "certificate_type", "certificate_no", "issued_by", "issue_date", "expiry_date", "category", "description", "status") VALUES
('9192fc2c-6ee0-3ec9-886c-d0f941afa042', 'assets/images/user/user9.jpg', 'Robert Thomas', 'Course Completion', 'CERT-008', 'IT Dept', '2023-04-25T00:00:00Z', '2024-04-25T00:00:00Z', 'Skill Development', 'Basic Computer Skills', 'Active') ON CONFLICT DO NOTHING;
INSERT INTO public.student_certificates ("id", "img", "student_name", "certificate_type", "certificate_no", "issued_by", "issue_date", "expiry_date", "category", "description", "status") VALUES
('211c960b-a164-30f8-92c4-5dbc1add5a44', 'assets/images/user/user10.jpg', 'Jennifer Lee', 'Attendance Award', 'CERT-009', 'Principal', '2023-03-30T00:00:00Z', '2025-01-20T00:00:00Z', 'General', '100% Attendance for Q1', 'Active') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
