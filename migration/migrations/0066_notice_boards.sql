-- Migration for notice_boards table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.notice_boards (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "img" TEXT,
    "title" TEXT,
    "posted_by" TEXT,
    "department" TEXT,
    "date" TIMESTAMP,
    "priority" TEXT,
    "status" TEXT,
    "description" TEXT,
    "target_audience" TEXT
);

INSERT INTO public.notice_boards ("id", "img", "title", "posted_by", "department", "date", "priority", "status", "description", "target_audience") VALUES 
('11111111-1111-1111-1111-111111111111', 'assets/images/user/user1.jpg', 'Annual Sports Day Announcement', 'John Smith', 'Sports', '2024-12-20', 'High', 'Active', 'Annual sports day will be held on January 15th, 2025. All students are requested to participate.', 'All Students') ON CONFLICT DO NOTHING;

INSERT INTO public.notice_boards ("id", "img", "title", "posted_by", "department", "date", "priority", "status", "description", "target_audience") VALUES 
('22222222-2222-2222-2222-222222222222', 'assets/images/user/user2.jpg', 'Parent-Teacher Meeting', 'Sarah Johnson', 'Administration', '2024-12-19', 'High', 'Active', 'PTM scheduled for December 30th. Parents are requested to meet respective class teachers.', 'Parents') ON CONFLICT DO NOTHING;

INSERT INTO public.notice_boards ("id", "img", "title", "posted_by", "department", "date", "priority", "status", "description", "target_audience") VALUES 
('33333333-3333-3333-3333-333333333333', 'assets/images/user/user3.jpg', 'Winter Break Schedule', 'Michael Brown', 'Administration', '2024-12-18', 'Medium', 'Active', 'Winter break from December 24th to January 5th. School will reopen on January 6th.', 'All') ON CONFLICT DO NOTHING;

INSERT INTO public.notice_boards ("id", "img", "title", "posted_by", "department", "date", "priority", "status", "description", "target_audience") VALUES 
('44444444-4444-4444-4444-444444444444', 'assets/images/user/user4.jpg', 'Science Exhibition', 'Emily Davis', 'Science', '2024-12-17', 'Medium', 'Active', 'Inter-school science exhibition on January 20th. Students interested in participating should register.', 'All Students') ON CONFLICT DO NOTHING;

INSERT INTO public.notice_boards ("id", "img", "title", "posted_by", "department", "date", "priority", "status", "description", "target_audience") VALUES 
('55555555-5555-5555-5555-555555555555', 'assets/images/user/user5.jpg', 'Library New Books Arrival', 'David Wilson', 'Library', '2024-12-16', 'Low', 'Active', 'New collection of books added to library. Students can issue them from December 20th.', 'All Students') ON CONFLICT DO NOTHING;

INSERT INTO public.notice_boards ("id", "img", "title", "posted_by", "department", "date", "priority", "status", "description", "target_audience") VALUES 
('66666666-6666-6666-6666-666666666666', 'assets/images/user/user6.jpg', 'Fee Payment Reminder', 'Lisa Anderson', 'Accounts', '2024-12-15', 'High', 'Active', 'Last date for fee payment is December 31st. Late fee will be charged after the deadline.', 'All Students') ON CONFLICT DO NOTHING;

INSERT INTO public.notice_boards ("id", "img", "title", "posted_by", "department", "date", "priority", "status", "description", "target_audience") VALUES 
('77777777-7777-7777-7777-777777777777', 'assets/images/user/user7.jpg', 'Career Counseling Session', 'Robert Martinez', 'Counseling', '2024-12-14', 'Medium', 'Active', 'Career counseling session for Grade 10-12 students on December 28th.', 'Senior Students') ON CONFLICT DO NOTHING;

INSERT INTO public.notice_boards ("id", "img", "title", "posted_by", "department", "date", "priority", "status", "description", "target_audience") VALUES 
('88888888-8888-8888-8888-888888888888', 'assets/images/user/user8.jpg', 'COVID-19 Safety Guidelines', 'Jennifer Taylor', 'Health', '2024-12-13', 'High', 'Archived', 'Updated COVID-19 safety guidelines. Masks are optional but hand sanitization is mandatory.', 'All') ON CONFLICT DO NOTHING;

INSERT INTO public.notice_boards ("id", "img", "title", "posted_by", "department", "date", "priority", "status", "description", "target_audience") VALUES 
('99999999-9999-9999-9999-999999999999', 'assets/images/user/user9.jpg', 'Music Competition Registration', 'William Thomas', 'Music', '2024-12-12', 'Low', 'Active', 'Inter-house music competition registration open till December 25th.', 'All Students') ON CONFLICT DO NOTHING;

INSERT INTO public.notice_boards ("id", "img", "title", "posted_by", "department", "date", "priority", "status", "description", "target_audience") VALUES 
('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'assets/images/user/user10.jpg', 'Transportation Route Change', 'Amanda White', 'Transport', '2024-12-11', 'High', 'Active', 'Route 5 timing changed from 7:30 AM to 7:00 AM effective from December 23rd.', 'Transport Users') ON CONFLICT DO NOTHING;

INSERT INTO public.notice_boards ("id", "img", "title", "posted_by", "department", "date", "priority", "status", "description", "target_audience") VALUES 
('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'assets/images/user/user11.jpg', 'Art Workshop Registration', 'Christopher Harris', 'Arts', '2024-12-10', 'Medium', 'Active', 'Weekend art workshop for beginners. Registration closes on December 27th.', 'All Students') ON CONFLICT DO NOTHING;

INSERT INTO public.notice_boards ("id", "img", "title", "posted_by", "department", "date", "priority", "status", "description", "target_audience") VALUES 
('cccccccc-cccc-cccc-cccc-cccccccccccc', 'assets/images/user/user6.jpg', 'Disciplinary Code Update', 'Jessica Clark', 'Discipline', '2024-12-09', 'High', 'Active', 'Updated school disciplinary code effective from next academic year.', 'All') ON CONFLICT DO NOTHING;

INSERT INTO public.notice_boards ("id", "img", "title", "posted_by", "department", "date", "priority", "status", "description", "target_audience") VALUES 
('dddddddd-dddd-dddd-dddd-dddddddddddd', 'assets/images/user/user1.jpg', 'Campus Maintenance Notice', 'Matthew Lewis', 'Facilities', '2024-12-08', 'Low', 'Active', 'Building B under maintenance from December 26-28. Classes shifted temporarily.', 'All') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
