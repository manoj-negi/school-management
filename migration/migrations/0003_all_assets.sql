-- Migration for all_assets table derived from allAssets.json
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.all_assets (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
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
INSERT INTO public.all_assets ("id", "no", "title", "subject", "purchase_date", "department", "type", "status", "last_borrowed", "borrower_name", "due_date", "shelf_location") VALUES ('40ac34db-dbc1-3212-9376-b5c3f7cda9fe', 'B123451', 'Web Programming', 'mathematics', '2019-02-25T14:22:18Z', 'civil', 'news paper', 'out of stock', '2022-01-15', 'Jane Doe', '2022-02-15', 'C3') ON CONFLICT DO NOTHING;
INSERT INTO public.all_assets ("id", "no", "title", "subject", "purchase_date", "department", "type", "status", "last_borrowed", "borrower_name", "due_date", "shelf_location") VALUES ('36aa3e18-8944-3d3f-b96d-866c45ee02a2', 'B123452', 'Java Black Book', 'java', '2019-02-17T14:22:18Z', 'computer', 'book', 'in stock', NULL, NULL, NULL, 'B2') ON CONFLICT DO NOTHING;
INSERT INTO public.all_assets ("id", "no", "title", "subject", "purchase_date", "department", "type", "status", "last_borrowed", "borrower_name", "due_date", "shelf_location") VALUES ('113ab6e5-8b55-3cf5-abdc-11f6c36f8d10', 'B123453', 'Parallel Computing', 'networking', '2019-02-13T14:22:18Z', 'computer', 'dvd', 'out of stock', NULL, NULL, NULL, 'C4') ON CONFLICT DO NOTHING;
INSERT INTO public.all_assets ("id", "no", "title", "subject", "purchase_date", "department", "type", "status", "last_borrowed", "borrower_name", "due_date", "shelf_location") VALUES ('96df68ac-7cce-3d62-9134-e7c39582ba9e', 'B123454', 'Politics Science', 'politics', '2019-02-01T14:22:18Z', 'computer', 'book', 'in stock', NULL, NULL, NULL, 'B1') ON CONFLICT DO NOTHING;
INSERT INTO public.all_assets ("id", "no", "title", "subject", "purchase_date", "department", "type", "status", "last_borrowed", "borrower_name", "due_date", "shelf_location") VALUES ('da1374fb-e8e4-3b58-bb24-a6a63ebbabc3', 'B123455', 'Networking', 'animation', '2019-02-02T14:22:18Z', 'mathematics', 'cd', 'out of stock', NULL, NULL, NULL, 'D1') ON CONFLICT DO NOTHING;
INSERT INTO public.all_assets ("id", "no", "title", "subject", "purchase_date", "department", "type", "status", "last_borrowed", "borrower_name", "due_date", "shelf_location") VALUES ('a3f62f31-937a-32ca-aba4-85e46e0152a8', 'B123456', 'Time History', 'java', '2019-02-26T14:22:18Z', 'mechanical', 'book', 'issue', '2022-03-10', 'John Smith', '2022-04-10', 'A2') ON CONFLICT DO NOTHING;
INSERT INTO public.all_assets ("id", "no", "title", "subject", "purchase_date", "department", "type", "status", "last_borrowed", "borrower_name", "due_date", "shelf_location") VALUES ('af0e95ad-fbf4-327a-a1c4-53eacebd8154', 'B123457', 'Politics', 'politics', '2019-02-22T14:22:18Z', 'civil', 'book', 'issue', '2022-01-20', 'Alice Johnson', '2022-02-20', 'B3') ON CONFLICT DO NOTHING;
INSERT INTO public.all_assets ("id", "no", "title", "subject", "purchase_date", "department", "type", "status", "last_borrowed", "borrower_name", "due_date", "shelf_location") VALUES ('ac0ec7d1-125d-3b4b-948c-fffce51f0b03', 'B123458', 'Networking', 'mathematics', '2019-02-19T14:22:18Z', 'computer', 'book', 'repair', NULL, NULL, NULL, 'A3') ON CONFLICT DO NOTHING;
INSERT INTO public.all_assets ("id", "no", "title", "subject", "purchase_date", "department", "type", "status", "last_borrowed", "borrower_name", "due_date", "shelf_location") VALUES ('bc448c90-6ed4-3436-aa99-369328a106b9', 'B123459', 'Web Programming', 'networking', '2019-02-15T14:22:18Z', 'civil', 'book', 'issue', '2022-02-25', 'Michael Brown', '2022-03-25', 'C1') ON CONFLICT DO NOTHING;
INSERT INTO public.all_assets ("id", "no", "title", "subject", "purchase_date", "department", "type", "status", "last_borrowed", "borrower_name", "due_date", "shelf_location") VALUES ('eb80108c-dc08-340f-ada9-fca92deeb115', 'B1234510', 'Computer Fundamental', 'animation', '2019-02-27T14:22:18Z', 'mathematics', 'book', 'issue', '2022-03-01', 'Emily Davis', '2022-04-01', 'A4') ON CONFLICT DO NOTHING;
INSERT INTO public.all_assets ("id", "no", "title", "subject", "purchase_date", "department", "type", "status", "last_borrowed", "borrower_name", "due_date", "shelf_location") VALUES ('1b27d4d2-b0c1-322c-9e27-2ee904ca2a1c', 'B1234511', 'Computer Fundamental', 'other', '2019-02-21T14:22:18Z', 'civil', 'cd', 'in stock', NULL, NULL, NULL, 'D2') ON CONFLICT DO NOTHING;
INSERT INTO public.all_assets ("id", "no", "title", "subject", "purchase_date", "department", "type", "status", "last_borrowed", "borrower_name", "due_date", "shelf_location") VALUES ('4585d067-8936-33c4-8c22-9b66db80b38f', 'B1234512', 'Time History', 'mathematics', '2019-02-10T14:22:18Z', 'computer', 'news paper', 'out of stock', NULL, NULL, NULL, 'C2') ON CONFLICT DO NOTHING;
INSERT INTO public.all_assets ("id", "no", "title", "subject", "purchase_date", "department", "type", "status", "last_borrowed", "borrower_name", "due_date", "shelf_location") VALUES ('e1089888-9bae-3b3a-896a-36e410996b4b', 'B1234513', 'Java Black Book', 'java', '2019-02-11T14:22:18Z', 'management', 'dvd', 'out of stock', NULL, NULL, NULL, 'D3') ON CONFLICT DO NOTHING;
INSERT INTO public.all_assets ("id", "no", "title", "subject", "purchase_date", "department", "type", "status", "last_borrowed", "borrower_name", "due_date", "shelf_location") VALUES ('c03a5e62-6455-300c-893d-ad0b4868820a', 'B1234514', 'Parallel Computing', 'politics', '2019-02-16T14:22:18Z', 'management', 'book', 'out of stock', NULL, NULL, NULL, 'B4') ON CONFLICT DO NOTHING;
INSERT INTO public.all_assets ("id", "no", "title", "subject", "purchase_date", "department", "type", "status", "last_borrowed", "borrower_name", "due_date", "shelf_location") VALUES ('f1feca69-b4cc-3a62-95ab-9c1c6eecd0ae', 'B1234515', 'Computer Fundamental', 'java', '2019-02-04T14:22:18Z', 'mechanical', 'book', 'repair', NULL, NULL, NULL, 'C5') ON CONFLICT DO NOTHING;
INSERT INTO public.all_assets ("id", "no", "title", "subject", "purchase_date", "department", "type", "status", "last_borrowed", "borrower_name", "due_date", "shelf_location") VALUES ('acfb885b-23d5-3c9b-b6c4-a6a5ba737392', 'B1234516', 'Advance Java', 'management', '2019-02-15T14:22:18Z', 'civil', 'book', 'out of stock', NULL, NULL, NULL, 'D4') ON CONFLICT DO NOTHING;
SET session_replication_role = 'origin';
