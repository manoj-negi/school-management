-- Migration for all_assets table derived from allAssets.json
SET session_replication_role = 'replica';

CREATE TABLE IF NOT EXISTS public.all_assets (
    "id" TEXT PRIMARY KEY,
    "no" TEXT,
    "title" TEXT,
    "subject" TEXT,
    "purchase_date" TIMESTAMP,
    "department" TEXT,
    "type" TEXT,
    "status" TEXT,
    "last_borrowed" TIMESTAMP,
    "borrower_name" TEXT,
    "due_date" TIMESTAMP,
    "shelf_location" TEXT
);

INSERT INTO public.all_assets ("id", "no", "title", "subject", "purchase_date", "department", "type", "status", "last_borrowed", "borrower_name", "due_date", "shelf_location") VALUES ('001', 'B123451', 'Web Programming', 'mathematics', '2019-02-25T14:22:18Z', 'civil', 'news paper', 'out of stock', '2022-01-15', 'Jane Doe', '2022-02-15', 'C3') ON CONFLICT DO NOTHING;
INSERT INTO public.all_assets ("id", "no", "title", "subject", "purchase_date", "department", "type", "status", "last_borrowed", "borrower_name", "due_date", "shelf_location") VALUES ('002', 'B123452', 'Java Black Book', 'java', '2019-02-17T14:22:18Z', 'computer', 'book', 'in stock', NULL, NULL, NULL, 'B2') ON CONFLICT DO NOTHING;
INSERT INTO public.all_assets ("id", "no", "title", "subject", "purchase_date", "department", "type", "status", "last_borrowed", "borrower_name", "due_date", "shelf_location") VALUES ('003', 'B123453', 'Parallel Computing', 'networking', '2019-02-13T14:22:18Z', 'computer', 'dvd', 'out of stock', NULL, NULL, NULL, 'C4') ON CONFLICT DO NOTHING;
INSERT INTO public.all_assets ("id", "no", "title", "subject", "purchase_date", "department", "type", "status", "last_borrowed", "borrower_name", "due_date", "shelf_location") VALUES ('004', 'B123454', 'Politics Science', 'politics', '2019-02-01T14:22:18Z', 'computer', 'book', 'in stock', NULL, NULL, NULL, 'B1') ON CONFLICT DO NOTHING;
INSERT INTO public.all_assets ("id", "no", "title", "subject", "purchase_date", "department", "type", "status", "last_borrowed", "borrower_name", "due_date", "shelf_location") VALUES ('005', 'B123455', 'Networking', 'animation', '2019-02-02T14:22:18Z', 'mathematics', 'cd', 'out of stock', NULL, NULL, NULL, 'D1') ON CONFLICT DO NOTHING;
INSERT INTO public.all_assets ("id", "no", "title", "subject", "purchase_date", "department", "type", "status", "last_borrowed", "borrower_name", "due_date", "shelf_location") VALUES ('006', 'B123456', 'Time History', 'java', '2019-02-26T14:22:18Z', 'mechanical', 'book', 'issue', '2022-03-10', 'John Smith', '2022-04-10', 'A2') ON CONFLICT DO NOTHING;
INSERT INTO public.all_assets ("id", "no", "title", "subject", "purchase_date", "department", "type", "status", "last_borrowed", "borrower_name", "due_date", "shelf_location") VALUES ('007', 'B123457', 'Politics', 'politics', '2019-02-22T14:22:18Z', 'civil', 'book', 'issue', '2022-01-20', 'Alice Johnson', '2022-02-20', 'B3') ON CONFLICT DO NOTHING;
INSERT INTO public.all_assets ("id", "no", "title", "subject", "purchase_date", "department", "type", "status", "last_borrowed", "borrower_name", "due_date", "shelf_location") VALUES ('008', 'B123458', 'Networking', 'mathematics', '2019-02-19T14:22:18Z', 'computer', 'book', 'repair', NULL, NULL, NULL, 'A3') ON CONFLICT DO NOTHING;
INSERT INTO public.all_assets ("id", "no", "title", "subject", "purchase_date", "department", "type", "status", "last_borrowed", "borrower_name", "due_date", "shelf_location") VALUES ('009', 'B123459', 'Web Programming', 'networking', '2019-02-15T14:22:18Z', 'civil', 'book', 'issue', '2022-02-25', 'Michael Brown', '2022-03-25', 'C1') ON CONFLICT DO NOTHING;
INSERT INTO public.all_assets ("id", "no", "title", "subject", "purchase_date", "department", "type", "status", "last_borrowed", "borrower_name", "due_date", "shelf_location") VALUES ('010', 'B1234510', 'Computer Fundamental', 'animation', '2019-02-27T14:22:18Z', 'mathematics', 'book', 'issue', '2022-03-01', 'Emily Davis', '2022-04-01', 'A4') ON CONFLICT DO NOTHING;
INSERT INTO public.all_assets ("id", "no", "title", "subject", "purchase_date", "department", "type", "status", "last_borrowed", "borrower_name", "due_date", "shelf_location") VALUES ('011', 'B1234511', 'Computer Fundamental', 'other', '2019-02-21T14:22:18Z', 'civil', 'cd', 'in stock', NULL, NULL, NULL, 'D2') ON CONFLICT DO NOTHING;
INSERT INTO public.all_assets ("id", "no", "title", "subject", "purchase_date", "department", "type", "status", "last_borrowed", "borrower_name", "due_date", "shelf_location") VALUES ('012', 'B1234512', 'Time History', 'mathematics', '2019-02-10T14:22:18Z', 'computer', 'news paper', 'out of stock', NULL, NULL, NULL, 'C2') ON CONFLICT DO NOTHING;
INSERT INTO public.all_assets ("id", "no", "title", "subject", "purchase_date", "department", "type", "status", "last_borrowed", "borrower_name", "due_date", "shelf_location") VALUES ('013', 'B1234513', 'Java Black Book', 'java', '2019-02-11T14:22:18Z', 'management', 'dvd', 'out of stock', NULL, NULL, NULL, 'D3') ON CONFLICT DO NOTHING;
INSERT INTO public.all_assets ("id", "no", "title", "subject", "purchase_date", "department", "type", "status", "last_borrowed", "borrower_name", "due_date", "shelf_location") VALUES ('014', 'B1234514', 'Parallel Computing', 'politics', '2019-02-16T14:22:18Z', 'management', 'book', 'out of stock', NULL, NULL, NULL, 'B4') ON CONFLICT DO NOTHING;
INSERT INTO public.all_assets ("id", "no", "title", "subject", "purchase_date", "department", "type", "status", "last_borrowed", "borrower_name", "due_date", "shelf_location") VALUES ('015', 'B1234515', 'Computer Fundamental', 'java', '2019-02-04T14:22:18Z', 'mechanical', 'book', 'repair', NULL, NULL, NULL, 'C5') ON CONFLICT DO NOTHING;
INSERT INTO public.all_assets ("id", "no", "title", "subject", "purchase_date", "department", "type", "status", "last_borrowed", "borrower_name", "due_date", "shelf_location") VALUES ('016', 'B1234516', 'Advance Java', 'management', '2019-02-15T14:22:18Z', 'civil', 'book', 'out of stock', NULL, NULL, NULL, 'D4') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';