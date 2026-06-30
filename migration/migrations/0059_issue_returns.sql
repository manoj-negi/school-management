-- Migration for issue_returns table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.issue_returns (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "book_no" TEXT,
    "book_title" TEXT,
    "student_name" TEXT,
    "roll_no" TEXT,
    "issue_date" TIMESTAMP WITHOUT TIME ZONE,
    "return_date" TIMESTAMP WITHOUT TIME ZONE,
    "status" TEXT
);

INSERT INTO public.issue_returns ("id", "book_no", "book_title", "student_name", "roll_no", "issue_date", "return_date", "status") VALUES
('1fc51c72-ff96-419b-bf72-8e1216afb901', 'B101', 'Introduction to Algorithms', 'John Doe', 'CS001', '2023-12-01 00:00:00', '2023-12-15 00:00:00', 'Returned'),
('2fc51c72-ff96-419b-bf72-8e1216afb902', 'B105', 'Modern Operating Systems', 'Jane Smith', 'CS002', '2023-12-05 00:00:00', '2023-12-20 00:00:00', 'Issued'),
('3fc51c72-ff96-419b-bf72-8e1216afb903', 'B110', 'Database System Concepts', 'Robert Brown', 'CS003', '2023-11-20 00:00:00', '2023-12-05 00:00:00', 'Overdue'),
('4fc51c72-ff96-419b-bf72-8e1216afb904', 'B115', 'Computer Networks', 'Emily Davis', 'CS004', '2023-12-10 00:00:00', '2023-12-25 00:00:00', 'Issued'),
('5fc51c72-ff96-419b-bf72-8e1216afb905', 'B120', 'Software Engineering', 'Michael Wilson', 'CS005', '2023-12-15 00:00:00', '2023-12-30 00:00:00', 'Issued')
ON CONFLICT DO NOTHING;
SET session_replication_role = 'origin';
