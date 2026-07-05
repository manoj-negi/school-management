-- Migration for announcements table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.announcements (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "img" TEXT,
    "title" TEXT,
    "announcement_type" TEXT,
    "posted_by" TEXT,
    "start_date" TIMESTAMP,
    "end_date" TIMESTAMP,
    "status" TEXT,
    "description" TEXT,
    "priority" TEXT
);

INSERT INTO public.announcements ("id", "img", "title", "announcement_type", "posted_by", "start_date", "end_date", "status", "description", "priority") VALUES 
('11111111-1111-1111-1111-111111111111', 'assets/images/user/user1.jpg', 'New Academic Year 2025 Commencement', 'Academic', 'Principal Office', '2025-01-01', '2025-01-15', 'Active', 'Academic year 2025 will commence from January 6th, 2025. All students must report by 8:00 AM.', 'High') ON CONFLICT DO NOTHING;

INSERT INTO public.announcements ("id", "img", "title", "announcement_type", "posted_by", "start_date", "end_date", "status", "description", "priority") VALUES 
('22222222-2222-2222-2222-222222222222', 'assets/images/user/user2.jpg', 'Republic Day Celebration', 'Event', 'Cultural Committee', '2025-01-20', '2025-01-26', 'Active', 'Republic Day celebration on January 26th. Flag hoisting at 8:00 AM followed by cultural programs.', 'High') ON CONFLICT DO NOTHING;

INSERT INTO public.announcements ("id", "img", "title", "announcement_type", "posted_by", "start_date", "end_date", "status", "description", "priority") VALUES 
('33333333-3333-3333-3333-333333333333', 'assets/images/user/user3.jpg', 'Textbook Distribution Schedule', 'General', 'Administration', '2025-01-02', '2025-01-10', 'Active', 'Textbooks will be distributed class-wise from January 2nd to 10th during school hours.', 'Medium') ON CONFLICT DO NOTHING;

INSERT INTO public.announcements ("id", "img", "title", "announcement_type", "posted_by", "start_date", "end_date", "status", "description", "priority") VALUES 
('44444444-4444-4444-4444-444444444444', 'assets/images/user/user4.jpg', 'Fire Safety Drill', 'Urgent', 'Safety Department', '2025-01-15', '2025-01-15', 'Active', 'Mandatory fire safety drill on January 15th at 11:00 AM. All students and staff must participate.', 'High') ON CONFLICT DO NOTHING;

INSERT INTO public.announcements ("id", "img", "title", "announcement_type", "posted_by", "start_date", "end_date", "status", "description", "priority") VALUES 
('55555555-5555-5555-5555-555555555555', 'assets/images/user/user5.jpg', 'Online Learning Platform Training', 'Academic', 'IT Department', '2025-01-08', '2025-01-12', 'Active', 'Training sessions for new online learning platform. Teachers sessions: Jan 8-9, Students: Jan 11-12.', 'Medium') ON CONFLICT DO NOTHING;

INSERT INTO public.announcements ("id", "img", "title", "announcement_type", "posted_by", "start_date", "end_date", "status", "description", "priority") VALUES 
('66666666-6666-6666-6666-666666666666', 'assets/images/user/user6.jpg', 'Annual Science Fair Registration', 'Event', 'Science Department', '2025-01-10', '2025-02-01', 'Active', 'Register for Annual Science Fair 2025. Last date: February 1st. Contact science lab for details.', 'Medium') ON CONFLICT DO NOTHING;

INSERT INTO public.announcements ("id", "img", "title", "announcement_type", "posted_by", "start_date", "end_date", "status", "description", "priority") VALUES 
('77777777-7777-7777-7777-777777777777', 'assets/images/user/user7.jpg', 'Parking Area Renovation', 'General', 'Facilities Management', '2025-01-20', '2025-01-31', 'Active', 'Parking area under renovation from Jan 20-31. Use alternative parking near sports ground.', 'Low') ON CONFLICT DO NOTHING;

INSERT INTO public.announcements ("id", "img", "title", "announcement_type", "posted_by", "start_date", "end_date", "status", "description", "priority") VALUES 
('88888888-8888-8888-8888-888888888888', 'assets/images/user/user8.jpg', 'Health Checkup Camp', 'Event', 'Health Services', '2025-01-25', '2025-01-27', 'Active', 'Free health checkup camp for all students on Jan 25-27. Dental, Eye and General checkup available.', 'Medium') ON CONFLICT DO NOTHING;

INSERT INTO public.announcements ("id", "img", "title", "announcement_type", "posted_by", "start_date", "end_date", "status", "description", "priority") VALUES 
('99999999-9999-9999-9999-999999999999', 'assets/images/user/user9.jpg', 'Alumni Meet 2025', 'Event', 'Alumni Relations', '2025-02-05', '2025-02-05', 'Active', 'Annual Alumni Meet on February 5th. Register at alumni office. Cultural programs and dinner included.', 'Low') ON CONFLICT DO NOTHING;

INSERT INTO public.announcements ("id", "img", "title", "announcement_type", "posted_by", "start_date", "end_date", "status", "description", "priority") VALUES 
('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'assets/images/user/user10.jpg', 'Exam Pattern Change Notice', 'Urgent', 'Examination Cell', '2025-01-05', '2025-01-20', 'Active', 'Important: Exam pattern changed for semester exams. 30% internal, 70% external. Details on website.', 'High') ON CONFLICT DO NOTHING;

INSERT INTO public.announcements ("id", "img", "title", "announcement_type", "posted_by", "start_date", "end_date", "status", "description", "priority") VALUES 
('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'assets/images/user/user11.jpg', 'Scholarship Application Open', 'Academic', 'Scholarship Committee', '2025-01-10', '2025-02-10', 'Active', 'Merit and need-based scholarship applications open. Apply online before February 10th.', 'Medium') ON CONFLICT DO NOTHING;

INSERT INTO public.announcements ("id", "img", "title", "announcement_type", "posted_by", "start_date", "end_date", "status", "description", "priority") VALUES 
('cccccccc-cccc-cccc-cccc-cccccccccccc', 'assets/images/user/user6.jpg', 'Campus WiFi Upgrade', 'General', 'IT Infrastructure', '2025-01-15', '2025-01-17', 'Active', 'WiFi infrastructure upgrade on Jan 15-17. Service may be intermittent during working hours.', 'Low') ON CONFLICT DO NOTHING;

INSERT INTO public.announcements ("id", "img", "title", "announcement_type", "posted_by", "start_date", "end_date", "status", "description", "priority") VALUES 
('dddddddd-dddd-dddd-dddd-dddddddddddd', 'assets/images/user/user1.jpg', 'COVID-19 Vaccination Drive', 'Urgent', 'Health Department', '2024-12-01', '2024-12-15', 'Expired', 'COVID-19 booster dose vaccination drive completed successfully. Thank you for participation.', 'High') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
