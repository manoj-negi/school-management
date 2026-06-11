-- Migration for book_status table derived from book-status.json
SET session_replication_role = 'replica';

CREATE TABLE IF NOT EXISTS public.book_status (
    "book_status_id" INTEGER,
    "book_id" INTEGER,
    "book_name" TEXT,
    "status" TEXT,
    "date_updated" TIMESTAMP,
    "last_checked_out_date" TIMESTAMP,
    "due_date" TIMESTAMP,
    "checked_out_by" TEXT,
    "reserved_by" TEXT,
    "condition" TEXT,
    "return_date" TEXT,
    "notes" TEXT
);

INSERT INTO public.book_status ("book_status_id", "book_id", "book_name", "status", "date_updated", "last_checked_out_date", "due_date", "checked_out_by", "reserved_by", "condition", "return_date", "notes") VALUES (1, 101, 'Introduction to Programming', 'Available', '2024-11-20T10:00:00Z', NULL, NULL, NULL, NULL, 'Good', NULL, 'No issues') ON CONFLICT DO NOTHING;
INSERT INTO public.book_status ("book_status_id", "book_id", "book_name", "status", "date_updated", "last_checked_out_date", "due_date", "checked_out_by", "reserved_by", "condition", "return_date", "notes") VALUES (2, 102, 'Data Structures and Algorithms', 'Checked Out', '2024-11-18T15:30:00Z', '2024-11-17T12:00:00Z', '2024-11-24T12:00:00Z', 'Student-001', NULL, 'Good', NULL, 'No issues') ON CONFLICT DO NOTHING;
INSERT INTO public.book_status ("book_status_id", "book_id", "book_name", "status", "date_updated", "last_checked_out_date", "due_date", "checked_out_by", "reserved_by", "condition", "return_date", "notes") VALUES (3, 103, 'Advanced Mathematics', 'Reserved', '2024-11-19T09:00:00Z', NULL, NULL, NULL, 'Student-002', 'Excellent', NULL, 'Reserved for upcoming assignment') ON CONFLICT DO NOTHING;
INSERT INTO public.book_status ("book_status_id", "book_id", "book_name", "status", "date_updated", "last_checked_out_date", "due_date", "checked_out_by", "reserved_by", "condition", "return_date", "notes") VALUES (4, 104, 'Physics for Engineers', 'Under Repair', '2024-11-15T14:45:00Z', NULL, NULL, NULL, NULL, 'Damaged', NULL, 'Cover damaged, pages torn') ON CONFLICT DO NOTHING;
INSERT INTO public.book_status ("book_status_id", "book_id", "book_name", "status", "date_updated", "last_checked_out_date", "due_date", "checked_out_by", "reserved_by", "condition", "return_date", "notes") VALUES (5, 105, 'History of Modern Science', 'Lost', '2024-11-12T16:00:00Z', '2024-10-01T09:00:00Z', '2024-10-08T09:00:00Z', 'Student-003', NULL, 'Good', NULL, 'Book reported as lost by the student') ON CONFLICT DO NOTHING;
INSERT INTO public.book_status ("book_status_id", "book_id", "book_name", "status", "date_updated", "last_checked_out_date", "due_date", "checked_out_by", "reserved_by", "condition", "return_date", "notes") VALUES (6, 106, 'Artificial Intelligence Basics', 'Available', '2024-11-22T08:30:00Z', NULL, NULL, NULL, NULL, 'Good', NULL, 'No issues') ON CONFLICT DO NOTHING;
INSERT INTO public.book_status ("book_status_id", "book_id", "book_name", "status", "date_updated", "last_checked_out_date", "due_date", "checked_out_by", "reserved_by", "condition", "return_date", "notes") VALUES (7, 107, 'The Art of War', 'Checked Out', '2024-11-10T10:00:00Z', '2024-11-05T14:00:00Z', '2024-11-12T14:00:00Z', 'Student-004', NULL, 'Good', NULL, 'On time') ON CONFLICT DO NOTHING;
INSERT INTO public.book_status ("book_status_id", "book_id", "book_name", "status", "date_updated", "last_checked_out_date", "due_date", "checked_out_by", "reserved_by", "condition", "return_date", "notes") VALUES (8, 108, 'The Philosophy of Science', 'Under Repair', '2024-11-13T09:30:00Z', NULL, NULL, NULL, NULL, 'Damaged', NULL, 'Spine broken') ON CONFLICT DO NOTHING;
INSERT INTO public.book_status ("book_status_id", "book_id", "book_name", "status", "date_updated", "last_checked_out_date", "due_date", "checked_out_by", "reserved_by", "condition", "return_date", "notes") VALUES (9, 109, 'Quantum Mechanics', 'Available', '2024-11-21T16:45:00Z', NULL, NULL, NULL, NULL, 'Excellent', NULL, 'No issues') ON CONFLICT DO NOTHING;
INSERT INTO public.book_status ("book_status_id", "book_id", "book_name", "status", "date_updated", "last_checked_out_date", "due_date", "checked_out_by", "reserved_by", "condition", "return_date", "notes") VALUES (10, 110, 'The Complete Guide to Python', 'Checked Out', '2024-11-18T11:00:00Z', '2024-11-10T10:00:00Z', '2024-11-17T10:00:00Z', 'Student-005', NULL, 'Good', NULL, 'Late return') ON CONFLICT DO NOTHING;
INSERT INTO public.book_status ("book_status_id", "book_id", "book_name", "status", "date_updated", "last_checked_out_date", "due_date", "checked_out_by", "reserved_by", "condition", "return_date", "notes") VALUES (11, 111, 'Introduction to Psychology', 'Reserved', '2024-11-19T07:45:00Z', NULL, NULL, NULL, 'Student-006', 'Good', NULL, 'Reserved by student for next month') ON CONFLICT DO NOTHING;
INSERT INTO public.book_status ("book_status_id", "book_id", "book_name", "status", "date_updated", "last_checked_out_date", "due_date", "checked_out_by", "reserved_by", "condition", "return_date", "notes") VALUES (12, 112, 'Principles of Economics', 'Lost', '2024-11-14T13:15:00Z', '2024-09-15T10:00:00Z', '2024-09-22T10:00:00Z', 'Student-007', NULL, 'Good', NULL, 'Book lost and unreturned') ON CONFLICT DO NOTHING;
INSERT INTO public.book_status ("book_status_id", "book_id", "book_name", "status", "date_updated", "last_checked_out_date", "due_date", "checked_out_by", "reserved_by", "condition", "return_date", "notes") VALUES (13, 113, 'Machine Learning Essentials', 'Checked Out', '2024-11-10T10:00:00Z', '2024-11-01T15:00:00Z', '2024-11-15T15:00:00Z', 'Student-008', NULL, 'Excellent', NULL, 'No issues') ON CONFLICT DO NOTHING;
INSERT INTO public.book_status ("book_status_id", "book_id", "book_name", "status", "date_updated", "last_checked_out_date", "due_date", "checked_out_by", "reserved_by", "condition", "return_date", "notes") VALUES (14, 114, 'C++ Programming Guide', 'Under Repair', '2024-11-20T12:15:00Z', NULL, NULL, NULL, NULL, 'Damaged', NULL, 'Pages torn and binding loose') ON CONFLICT DO NOTHING;
INSERT INTO public.book_status ("book_status_id", "book_id", "book_name", "status", "date_updated", "last_checked_out_date", "due_date", "checked_out_by", "reserved_by", "condition", "return_date", "notes") VALUES (15, 115, 'Chemistry in Everyday Life', 'Available', '2024-11-20T14:10:00Z', NULL, NULL, NULL, NULL, 'Good', NULL, 'No issues') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';