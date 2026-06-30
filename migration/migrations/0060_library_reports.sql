-- Migration for library_reports table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.library_reports (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "report_name" TEXT,
    "generated_date" TIMESTAMP WITHOUT TIME ZONE,
    "type" TEXT,
    "status" TEXT
);

INSERT INTO public.library_reports ("id", "report_name", "generated_date", "type", "status") VALUES
('1ac51c72-ff96-419b-bf72-8e1216afb901', 'Monthly Book Stock Report - Dec 2023', '2023-12-25 00:00:00', 'Stock Report', 'Available'),
('2ac51c72-ff96-419b-bf72-8e1216afb902', 'Overdue Books List - Dec 2023', '2023-12-24 00:00:00', 'Overdue Report', 'Available'),
('3ac51c72-ff96-419b-bf72-8e1216afb903', 'Student Borrowing History - Dec 2023', '2023-12-23 00:00:00', 'Borrowing Report', 'Available'),
('4ac51c72-ff96-419b-bf72-8e1216afb904', 'Library Fines Summary - Q4 2023', '2023-12-20 00:00:00', 'Finance Report', 'Processing'),
('5ac51c72-ff96-419b-bf72-8e1216afb905', 'New Arrivals Catalog - Dec 2023', '2023-12-15 00:00:00', 'Catalog Report', 'Available')
ON CONFLICT DO NOTHING;
SET session_replication_role = 'origin';
