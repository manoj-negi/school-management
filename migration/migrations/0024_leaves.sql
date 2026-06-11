-- Migration for leaves table derived from leaves.json
SET session_replication_role = 'replica';

CREATE TABLE IF NOT EXISTS public.leaves (
    "id" TEXT PRIMARY KEY,
    "img" TEXT,
    "name" TEXT,
    "employee_id" TEXT,
    "role" TEXT,
    "department" TEXT,
    "type" TEXT,
    "from" TIMESTAMP,
    "leave_to" TIMESTAMP,
    "no_of_days" TEXT,
    "duration_type" TEXT,
    "status" TEXT,
    "requested_on" TIMESTAMP,
    "approved_by" TEXT,
    "approval_date" TIMESTAMP,
    "reason" TEXT,
    "note" TEXT
);

INSERT INTO public.leaves ("id", "img", "name", "employee_id", "role", "department", "type", "from", "leave_to", "no_of_days", "duration_type", "status", "requested_on", "approved_by", "approval_date", "reason", "note") VALUES ('001', 'assets/images/user/user1.jpg', 'Mr. John Deo', 'T123', 'Teacher', 'Mathematics', 'Sick Leave', '2024-11-01T09:00:00Z', '2024-11-05T09:00:00Z', '5', 'Full-day', 'Approved', '2024-10-30T10:00:00Z', 'Ms. Jane Smith', '2024-10-31T10:30:00Z', 'Flu symptoms, need rest for recovery.', 'Mr. Deo has been advised bed rest due to a viral infection. Will return to work on 6th November.') ON CONFLICT DO NOTHING;
INSERT INTO public.leaves ("id", "img", "name", "employee_id", "role", "department", "type", "from", "leave_to", "no_of_days", "duration_type", "status", "requested_on", "approved_by", "approval_date", "reason", "note") VALUES ('002', 'assets/images/user/user2.jpg', 'Ms. Sarah Smith', 'T124', 'Teacher', 'English', 'Maternity Leave', '2024-12-01T09:00:00Z', '2025-01-01T09:00:00Z', '31', 'Full-day', 'Pending', '2024-10-15T09:00:00Z', NULL, NULL, 'Pregnancy and childbirth.', 'Ms. Smith is expecting a baby and has requested maternity leave starting December 1st.') ON CONFLICT DO NOTHING;
INSERT INTO public.leaves ("id", "img", "name", "employee_id", "role", "department", "type", "from", "leave_to", "no_of_days", "duration_type", "status", "requested_on", "approved_by", "approval_date", "reason", "note") VALUES ('003', 'assets/images/user/user3.jpg', 'Ms. Edna Gilbert', 'T125', 'Teacher', 'History', 'Medical Leave', '2024-11-01T09:00:00Z', '2024-11-03T09:00:00Z', '2', 'Half-day', 'Rejected', '2024-10-18T14:22:18Z', NULL, NULL, 'Surgery recovery.', 'Ms. Gilbert''s leave request was not approved due to staffing shortages in the History department.') ON CONFLICT DO NOTHING;
INSERT INTO public.leaves ("id", "img", "name", "employee_id", "role", "department", "type", "from", "leave_to", "no_of_days", "duration_type", "status", "requested_on", "approved_by", "approval_date", "reason", "note") VALUES ('004', 'assets/images/user/user4.jpg', 'Ms. Shelia Osterberg', 'T126', 'IT Support', 'IT Support', 'Sick Leave', '2024-11-05T09:00:00Z', '2024-11-07T09:00:00Z', '3', 'Full-day', 'Approved', '2024-11-02T11:00:00Z', 'Mr. Tom Johnson', '2024-11-03T09:00:00Z', 'Flu symptoms and fever.', 'Ms. Osterberg has been approved for a short leave for medical reasons.') ON CONFLICT DO NOTHING;
INSERT INTO public.leaves ("id", "img", "name", "employee_id", "role", "department", "type", "from", "leave_to", "no_of_days", "duration_type", "status", "requested_on", "approved_by", "approval_date", "reason", "note") VALUES ('005', 'assets/images/user/user5.jpg', 'Mr. Barbara Garland', 'T127', 'Nurse', 'Health Center', 'Casual Leave', '2024-11-15T09:00:00Z', '2024-11-17T09:00:00Z', '2', 'Full-day', 'Approved', '2024-10-30T15:00:00Z', 'Nurse Lisa Grey', '2024-10-31T16:00:00Z', 'Personal errands.', 'Mr. Garland is approved for two days off for personal errands.') ON CONFLICT DO NOTHING;
INSERT INTO public.leaves ("id", "img", "name", "employee_id", "role", "department", "type", "from", "leave_to", "no_of_days", "duration_type", "status", "requested_on", "approved_by", "approval_date", "reason", "note") VALUES ('006', 'assets/images/user/user6.jpg', 'Ms. Sarah Smith', 'T128', 'Teacher', 'Science', 'Medical Leave', '2024-11-05T09:00:00Z', '2024-11-08T09:00:00Z', '3', 'Half-day', 'Pending', '2024-11-01T12:00:00Z', NULL, NULL, 'Recovering from a minor surgery.', 'Ms. Smith has requested medical leave for recovery post-surgery.') ON CONFLICT DO NOTHING;
INSERT INTO public.leaves ("id", "img", "name", "employee_id", "role", "department", "type", "from", "leave_to", "no_of_days", "duration_type", "status", "requested_on", "approved_by", "approval_date", "reason", "note") VALUES ('007', 'assets/images/user/user7.jpg', 'Mr. Marie Brodsky', 'T129', 'Teacher', 'Art', 'Casual Leave', '2024-11-10T09:00:00Z', '2024-11-12T09:00:00Z', '2', 'Half-day', 'Rejected', '2024-11-01T14:00:00Z', NULL, NULL, 'Attending a family event.', 'Mr. Brodsky''s leave request was rejected due to critical staffing in the Art department.') ON CONFLICT DO NOTHING;
INSERT INTO public.leaves ("id", "img", "name", "employee_id", "role", "department", "type", "from", "leave_to", "no_of_days", "duration_type", "status", "requested_on", "approved_by", "approval_date", "reason", "note") VALUES ('008', 'assets/images/user/user8.jpg', 'Ms. Kara Thompson', 'T130', 'Teacher', 'Physical Education', 'Casual Leave', '2024-11-15T09:00:00Z', '2024-11-17T09:00:00Z', '3', 'Full-day', 'Approved', '2024-11-01T15:00:00Z', 'Mr. Anne White', '2024-11-02T09:00:00Z', 'Family emergency.', 'Ms. Thompson''s leave request was approved due to an urgent family situation.') ON CONFLICT DO NOTHING;
INSERT INTO public.leaves ("id", "img", "name", "employee_id", "role", "department", "type", "from", "leave_to", "no_of_days", "duration_type", "status", "requested_on", "approved_by", "approval_date", "reason", "note") VALUES ('009', 'assets/images/user/user9.jpg', 'Mr. Joseph Nye', 'T131', 'Teacher', 'Social Studies', 'Medical Leave', '2024-11-10T09:00:00Z', '2024-11-12T09:00:00Z', '3', 'Half-day', 'Approved', '2024-11-02T12:00:00Z', 'Mr. Mark Brown', '2024-11-03T10:30:00Z', 'Post-operation recovery.', 'Mr. Nye has requested medical leave for post-operative recovery and rehabilitation.') ON CONFLICT DO NOTHING;
INSERT INTO public.leaves ("id", "img", "name", "employee_id", "role", "department", "type", "from", "leave_to", "no_of_days", "duration_type", "status", "requested_on", "approved_by", "approval_date", "reason", "note") VALUES ('010', 'assets/images/user/user10.jpg', 'Ms. Ricardo Wendler', 'T132', 'Teacher', 'Science', 'Maternity Leave', '2024-12-01T09:00:00Z', '2025-01-01T09:00:00Z', '31', 'Full-day', 'Rejected', '2024-11-01T14:00:00Z', NULL, NULL, 'Pregnancy and childbirth.', 'Ms. Wendler''s maternity leave request was rejected due to staffing constraints.') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';