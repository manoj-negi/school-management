-- Migration for std_leave_req table derived from stdLeaveReq.json
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.std_leave_req (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "section" TEXT,
    "class" TEXT,
    "apply_date" TIMESTAMP,
    "from_date" TIMESTAMP,
    "to_date" TIMESTAMP,
    "reason" TEXT,
    "status" TEXT
);
INSERT INTO public.std_leave_req ("id", "section", "class", "apply_date", "from_date", "to_date", "reason", "status") VALUES ('ad80fc50-3714-332c-b679-42bece121a84', 'A', 'R305 A', '2019-02-17T14:22:18Z', '2019-02-22T14:22:18Z', '2019-02-26T14:22:18Z', 'Festivle holiday leave request', 'Approved') ON CONFLICT DO NOTHING;
INSERT INTO public.std_leave_req ("id", "section", "class", "apply_date", "from_date", "to_date", "reason", "status") VALUES ('1031d9c4-75d6-3578-bc81-d91598317aa1', 'A', 'R305 A', '2019-02-17T14:22:18Z', '2019-02-22T14:22:18Z', '2019-02-26T14:22:18Z', 'Festivle holiday leave request', 'Rejected') ON CONFLICT DO NOTHING;
INSERT INTO public.std_leave_req ("id", "section", "class", "apply_date", "from_date", "to_date", "reason", "status") VALUES ('3d755c89-a486-35a4-a68e-3d3b128de0e3', 'B', 'R452 B', '2019-02-17T14:22:18Z', '2019-02-22T14:22:18Z', '2019-02-26T14:22:18Z', 'Festivle holiday leave request', 'Rejected') ON CONFLICT DO NOTHING;
INSERT INTO public.std_leave_req ("id", "section", "class", "apply_date", "from_date", "to_date", "reason", "status") VALUES ('a7c7b22a-f686-323d-ac6e-de09796fa71d', 'C', 'R201 C', '2019-02-17T14:22:18Z', '2019-02-22T14:22:18Z', '2019-02-26T14:22:18Z', 'Festivle holiday leave request', 'Approved') ON CONFLICT DO NOTHING;
INSERT INTO public.std_leave_req ("id", "section", "class", "apply_date", "from_date", "to_date", "reason", "status") VALUES ('d8957d2b-e032-3bd8-a442-bf5d5a84d488', 'F', 'R103 F', '2019-02-17T14:22:18Z', '2019-02-22T14:22:18Z', '2019-02-26T14:22:18Z', 'Festivle holiday leave request', 'Approved') ON CONFLICT DO NOTHING;
INSERT INTO public.std_leave_req ("id", "section", "class", "apply_date", "from_date", "to_date", "reason", "status") VALUES ('56f8c269-b0fd-30a2-b2fc-c35fd84a52bf', 'A', 'R305 A', '2019-02-17T14:22:18Z', '2019-02-22T14:22:18Z', '2019-02-26T14:22:18Z', 'Festivle holiday leave request', 'Approved') ON CONFLICT DO NOTHING;
INSERT INTO public.std_leave_req ("id", "section", "class", "apply_date", "from_date", "to_date", "reason", "status") VALUES ('f68820e1-4c4b-3f54-8a02-c732d26bce04', 'F', 'R503 F', '2019-02-17T14:22:18Z', '2019-02-22T14:22:18Z', '2019-02-26T14:22:18Z', 'Festivle holiday leave request', 'Rejected') ON CONFLICT DO NOTHING;
INSERT INTO public.std_leave_req ("id", "section", "class", "apply_date", "from_date", "to_date", "reason", "status") VALUES ('e0f53d87-3b1b-363f-8fb4-9a1ac5f2caeb', 'A', 'R305 A', '2019-02-17T14:22:18Z', '2019-02-22T14:22:18Z', '2019-02-26T14:22:18Z', 'Festivle holiday leave request', 'Approved') ON CONFLICT DO NOTHING;
INSERT INTO public.std_leave_req ("id", "section", "class", "apply_date", "from_date", "to_date", "reason", "status") VALUES ('901079c4-c538-35cb-8912-7118016e0bc1', 'C', 'R201 C', '2019-02-17T14:22:18Z', '2019-02-22T14:22:18Z', '2019-02-26T14:22:18Z', 'Festivle holiday leave request', 'Approved') ON CONFLICT DO NOTHING;
SET session_replication_role = 'origin';
