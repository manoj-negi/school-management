-- Migration for holidays table derived from holidays.json
SET session_replication_role = 'replica';

CREATE TABLE IF NOT EXISTS public.holidays (
    "id" TEXT PRIMARY KEY,
    "holiday_name" TEXT,
    "date" TIMESTAMP,
    "location" TEXT,
    "shift" TEXT,
    "details" TEXT,
    "holiday_type" TEXT,
    "created_by" TEXT,
    "creation_date" TIMESTAMP,
    "approval_status" TEXT
);

INSERT INTO public.holidays ("id", "holiday_name", "date", "location", "shift", "details", "holiday_type", "created_by", "creation_date", "approval_status") VALUES ('001', 'New Year', '2021-12-31T14:22:18Z', 'All Locations', 'All Shifts', 'This festival is celebrate for.', 'National', 'Admin', '2021-11-01T10:00:00Z', 'Approved') ON CONFLICT DO NOTHING;
INSERT INTO public.holidays ("id", "holiday_name", "date", "location", "shift", "details", "holiday_type", "created_by", "creation_date", "approval_status") VALUES ('002', 'World Aids Day', '2021-12-10T14:22:18Z', 'All Locations', 'Day Shifts', 'This festival is celebrate for.', 'Awareness', 'Admin', '2021-11-01T10:00:00Z', 'Approved') ON CONFLICT DO NOTHING;
INSERT INTO public.holidays ("id", "holiday_name", "date", "location", "shift", "details", "holiday_type", "created_by", "creation_date", "approval_status") VALUES ('003', 'World Milk Day', '2021-06-01T14:22:18Z', 'All Locations', 'Night Shifts', 'This festival is celebrate for.', 'Awareness', 'Admin', '2021-11-01T10:00:00Z', 'Approved') ON CONFLICT DO NOTHING;
INSERT INTO public.holidays ("id", "holiday_name", "date", "location", "shift", "details", "holiday_type", "created_by", "creation_date", "approval_status") VALUES ('004', 'Diwali', '2021-11-04T14:22:18Z', 'All Locations', 'All Shifts', 'This festival is celebrate for.', 'Religious', 'Admin', '2021-11-01T10:00:00Z', 'Approved') ON CONFLICT DO NOTHING;
INSERT INTO public.holidays ("id", "holiday_name", "date", "location", "shift", "details", "holiday_type", "created_by", "creation_date", "approval_status") VALUES ('005', 'Global Family Day', '2021-01-01T14:22:18Z', 'All Locations', 'Night Shifts', 'This festival is celebrate for.', 'Cultural', 'Admin', '2021-11-01T10:00:00Z', 'Rejected') ON CONFLICT DO NOTHING;
INSERT INTO public.holidays ("id", "holiday_name", "date", "location", "shift", "details", "holiday_type", "created_by", "creation_date", "approval_status") VALUES ('006', 'Earth Hour', '2021-03-27T14:22:18Z', 'All Locations', 'All Shifts', 'This festival is celebrate for.', 'Environmental', 'Admin', '2021-11-01T10:00:00Z', 'Approved') ON CONFLICT DO NOTHING;
INSERT INTO public.holidays ("id", "holiday_name", "date", "location", "shift", "details", "holiday_type", "created_by", "creation_date", "approval_status") VALUES ('007', 'World Book Day', '2021-04-23T14:22:18Z', 'All Locations', 'All Shifts', 'This festival is celebrate for.', 'Cultural', 'Admin', '2021-11-01T10:00:00Z', 'Rejected') ON CONFLICT DO NOTHING;
INSERT INTO public.holidays ("id", "holiday_name", "date", "location", "shift", "details", "holiday_type", "created_by", "creation_date", "approval_status") VALUES ('008', 'International Yoga Day', '2021-06-21T14:22:18Z', 'All Locations', 'Night Shifts', 'This festival is celebrate for.', 'Health', 'Admin', '2021-11-01T10:00:00Z', 'Approved') ON CONFLICT DO NOTHING;
INSERT INTO public.holidays ("id", "holiday_name", "date", "location", "shift", "details", "holiday_type", "created_by", "creation_date", "approval_status") VALUES ('009', 'Eid', '2021-04-11T14:22:18Z', 'All Locations', 'Day Shifts', 'This festival is celebrate for.', 'Religious', 'Admin', '2021-11-01T10:00:00Z', 'Approved') ON CONFLICT DO NOTHING;
INSERT INTO public.holidays ("id", "holiday_name", "date", "location", "shift", "details", "holiday_type", "created_by", "creation_date", "approval_status") VALUES ('010', 'Holi', '2021-07-25T14:22:18Z', 'All Locations', 'Night Shifts', 'This festival is celebrate for.', 'Religious', 'Admin', '2021-11-01T10:00:00Z', 'Approved') ON CONFLICT DO NOTHING;
INSERT INTO public.holidays ("id", "holiday_name", "date", "location", "shift", "details", "holiday_type", "created_by", "creation_date", "approval_status") VALUES ('011', 'Christmas', '2021-12-25T14:22:18Z', 'All Locations', 'Day Shifts', 'This festival is celebrate for.', 'Religious', 'Admin', '2021-11-01T10:00:00Z', 'Approved') ON CONFLICT DO NOTHING;
INSERT INTO public.holidays ("id", "holiday_name", "date", "location", "shift", "details", "holiday_type", "created_by", "creation_date", "approval_status") VALUES ('012', 'Dussehra', '2021-07-18T14:22:18Z', 'All Locations', 'All Shifts', 'This festival is celebrate for.', 'Religious', 'Admin', '2021-11-01T10:00:00Z', 'Approved') ON CONFLICT DO NOTHING;
INSERT INTO public.holidays ("id", "holiday_name", "date", "location", "shift", "details", "holiday_type", "created_by", "creation_date", "approval_status") VALUES ('013', 'April Fools Day', '2021-04-01T22:18:00Z', 'All Locations', 'All Shifts', 'This festival is celebrate for.', 'Cultural', 'Admin', '2021-11-01T10:00:00Z', 'Approved') ON CONFLICT DO NOTHING;
INSERT INTO public.holidays ("id", "holiday_name", "date", "location", "shift", "details", "holiday_type", "created_by", "creation_date", "approval_status") VALUES ('014', 'Good Friday', '2021-12-31T14:22:18Z', 'All Locations', 'Day Shifts', 'This festival is celebrate for.', 'Religious', 'Admin', '2021-11-01T10:00:00Z', 'Approved') ON CONFLICT DO NOTHING;
INSERT INTO public.holidays ("id", "holiday_name", "date", "location", "shift", "details", "holiday_type", "created_by", "creation_date", "approval_status") VALUES ('015', 'Easter', '2021-12-31T14:22:18Z', 'All Locations', 'Night Shifts', 'This festival is celebrate for.', 'Religious', 'Admin', '2021-11-01T10:00:00Z', 'Approved') ON CONFLICT DO NOTHING;
INSERT INTO public.holidays ("id", "holiday_name", "date", "location", "shift", "details", "holiday_type", "created_by", "creation_date", "approval_status") VALUES ('016', 'Halloween', '2021-10-31T14:22:18Z', 'All Locations', 'All Shifts', 'This festival is celebrate for.', 'Cultural', 'Admin', '2021-11-01T10:00:00Z', 'Approved') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';