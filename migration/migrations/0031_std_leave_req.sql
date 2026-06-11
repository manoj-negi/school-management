-- Migration for std_leave_req table derived from stdLeaveReq.json
SET session_replication_role = 'replica';

CREATE TABLE IF NOT EXISTS public.std_leave_req (
    "id" TEXT PRIMARY KEY,
    "section" TEXT,
    "class" TEXT,
    "apply_date" TIMESTAMP,
    "from_date" TIMESTAMP,
    "to_date" TIMESTAMP,
    "reason" TEXT,
    "status" TEXT
);

INSERT INTO public.std_leave_req ("id", "section", "class", "apply_date", "from_date", "to_date", "reason", "status") VALUES ('001', 'A', 'R305 A', '2019-02-17T14:22:18Z', '2019-02-22T14:22:18Z', '2019-02-26T14:22:18Z', 'Festivle holiday leave request', 'Approved') ON CONFLICT DO NOTHING;
INSERT INTO public.std_leave_req ("id", "section", "class", "apply_date", "from_date", "to_date", "reason", "status") VALUES ('002', 'A', 'R305 A', '2019-02-17T14:22:18Z', '2019-02-22T14:22:18Z', '2019-02-26T14:22:18Z', 'Festivle holiday leave request', 'Rejected') ON CONFLICT DO NOTHING;
INSERT INTO public.std_leave_req ("id", "section", "class", "apply_date", "from_date", "to_date", "reason", "status") VALUES ('003', 'B', 'R452 B', '2019-02-17T14:22:18Z', '2019-02-22T14:22:18Z', '2019-02-26T14:22:18Z', 'Festivle holiday leave request', 'Rejected') ON CONFLICT DO NOTHING;
INSERT INTO public.std_leave_req ("id", "section", "class", "apply_date", "from_date", "to_date", "reason", "status") VALUES ('004', 'C', 'R201 C', '2019-02-17T14:22:18Z', '2019-02-22T14:22:18Z', '2019-02-26T14:22:18Z', 'Festivle holiday leave request', 'Approved') ON CONFLICT DO NOTHING;
INSERT INTO public.std_leave_req ("id", "section", "class", "apply_date", "from_date", "to_date", "reason", "status") VALUES ('005', 'F', 'R103 F', '2019-02-17T14:22:18Z', '2019-02-22T14:22:18Z', '2019-02-26T14:22:18Z', 'Festivle holiday leave request', 'Approved') ON CONFLICT DO NOTHING;
INSERT INTO public.std_leave_req ("id", "section", "class", "apply_date", "from_date", "to_date", "reason", "status") VALUES ('006', 'A', 'R305 A', '2019-02-17T14:22:18Z', '2019-02-22T14:22:18Z', '2019-02-26T14:22:18Z', 'Festivle holiday leave request', 'Approved') ON CONFLICT DO NOTHING;
INSERT INTO public.std_leave_req ("id", "section", "class", "apply_date", "from_date", "to_date", "reason", "status") VALUES ('007', 'F', 'R503 F', '2019-02-17T14:22:18Z', '2019-02-22T14:22:18Z', '2019-02-26T14:22:18Z', 'Festivle holiday leave request', 'Rejected') ON CONFLICT DO NOTHING;
INSERT INTO public.std_leave_req ("id", "section", "class", "apply_date", "from_date", "to_date", "reason", "status") VALUES ('008', 'A', 'R305 A', '2019-02-17T14:22:18Z', '2019-02-22T14:22:18Z', '2019-02-26T14:22:18Z', 'Festivle holiday leave request', 'Approved') ON CONFLICT DO NOTHING;
INSERT INTO public.std_leave_req ("id", "section", "class", "apply_date", "from_date", "to_date", "reason", "status") VALUES ('009', 'C', 'R201 C', '2019-02-17T14:22:18Z', '2019-02-22T14:22:18Z', '2019-02-26T14:22:18Z', 'Festivle holiday leave request', 'Approved') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';