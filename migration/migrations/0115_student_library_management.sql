-- Migration for student library issued books, due dates, and book history records
SET session_replication_role = 'replica';

CREATE TABLE IF NOT EXISTS public.student_my_issued_books (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "book_title" TEXT,
    "author" TEXT,
    "isbn_no" TEXT,
    "issue_date" TEXT,
    "due_date" TEXT,
    "return_date" TEXT,
    "status" TEXT
);

CREATE TABLE IF NOT EXISTS public.student_due_dates (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "book_title" TEXT,
    "isbn_no" TEXT,
    "due_date" TEXT,
    "days_remaining" INTEGER,
    "fine_amount" INTEGER,
    "status" TEXT
);

CREATE TABLE IF NOT EXISTS public.student_book_history (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "book_title" TEXT,
    "author" TEXT,
    "isbn_no" TEXT,
    "issue_date" TEXT,
    "return_date" TEXT,
    "category" TEXT
);

-- Seed initial mock values
INSERT INTO public.student_my_issued_books ("id", "book_title", "author", "isbn_no", "issue_date", "due_date", "return_date", "status") VALUES
('9c800000-0000-0000-0000-000000000001', 'Introduction to Algorithms', 'Cormen et al.', '9780262033848', '2025-01-10', '2025-01-25', '2025-01-24', 'Returned'),
('9c800000-0000-0000-0000-000000000002', 'Clean Code', 'Robert C. Martin', '9780132350884', '2025-02-01', '2025-02-15', '', 'Issued') ON CONFLICT DO NOTHING;

INSERT INTO public.student_due_dates ("id", "book_title", "isbn_no", "due_date", "days_remaining", "fine_amount", "status") VALUES
('9d800000-0000-0000-0000-000000000001', 'Clean Code', '9780132350884', '2025-02-15', 5, 0, 'Active'),
('9d800000-0000-0000-0000-000000000002', 'Design Patterns', '9780201633610', '2025-01-20', -21, 105, 'Overdue') ON CONFLICT DO NOTHING;

INSERT INTO public.student_book_history ("id", "book_title", "author", "isbn_no", "issue_date", "return_date", "category") VALUES
('9e900000-0000-0000-0000-000000000001', 'Introduction to Algorithms', 'Cormen et al.', '9780262033848', '2024-01-10', '2024-01-24', 'Computer Science'),
('9e900000-0000-0000-0000-000000000002', 'Clean Code', 'Robert C. Martin', '9780132350884', '2024-02-01', '2024-02-15', 'Programming') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
