-- Migration for academic_years table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.academic_years (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "academic_year" TEXT,
    "status" TEXT,
    "start_date" TIMESTAMP,
    "end_date" TIMESTAMP,
    "description" TEXT,
    "department" TEXT
);

INSERT INTO public.academic_years ("id", "academic_year", "status", "start_date", "end_date", "description", "department") VALUES 
('10000000-0000-0000-0000-000000000001', '2020-21', 'Inactive', '2020-06-01 00:00:00', '2021-05-31 23:59:59', 'Academic Year 2020-21', 'All') ON CONFLICT DO NOTHING;

INSERT INTO public.academic_years ("id", "academic_year", "status", "start_date", "end_date", "description", "department") VALUES 
('10000000-0000-0000-0000-000000000002', '2021-22', 'Inactive', '2021-06-01 00:00:00', '2022-05-31 23:59:59', 'Academic Year 2021-22', 'All') ON CONFLICT DO NOTHING;

INSERT INTO public.academic_years ("id", "academic_year", "status", "start_date", "end_date", "description", "department") VALUES 
('10000000-0000-0000-0000-000000000003', '2022-23', 'Inactive', '2022-06-01 00:00:00', '2023-05-31 23:59:59', 'Academic Year 2022-23', 'All') ON CONFLICT DO NOTHING;

INSERT INTO public.academic_years ("id", "academic_year", "status", "start_date", "end_date", "description", "department") VALUES 
('10000000-0000-0000-0000-000000000004', '2023-24', 'Active', '2023-06-01 00:00:00', '2024-05-31 23:59:59', 'Academic Year 2023-24', 'All') ON CONFLICT DO NOTHING;

INSERT INTO public.academic_years ("id", "academic_year", "status", "start_date", "end_date", "description", "department") VALUES 
('10000000-0000-0000-0000-000000000005', '2024-25', 'Pending', '2024-06-01 00:00:00', '2025-05-31 23:59:59', 'Academic Year 2024-25', 'All') ON CONFLICT DO NOTHING;

INSERT INTO public.academic_years ("id", "academic_year", "status", "start_date", "end_date", "description", "department") VALUES 
('10000000-0000-0000-0000-000000000006', '2025-26', 'Planned', '2025-06-01 00:00:00', '2026-05-31 23:59:59', 'Academic Year 2025-26', 'All') ON CONFLICT DO NOTHING;

INSERT INTO public.academic_years ("id", "academic_year", "status", "start_date", "end_date", "description", "department") VALUES 
('10000000-0000-0000-0000-000000000007', '2019-20', 'Inactive', '2019-06-01 00:00:00', '2020-05-31 23:59:59', 'Academic Year 2019-20', 'All') ON CONFLICT DO NOTHING;

INSERT INTO public.academic_years ("id", "academic_year", "status", "start_date", "end_date", "description", "department") VALUES 
('10000000-0000-0000-0000-000000000008', '2018-19', 'Inactive', '2018-06-01 00:00:00', '2019-05-31 23:59:59', 'Academic Year 2018-19', 'All') ON CONFLICT DO NOTHING;

INSERT INTO public.academic_years ("id", "academic_year", "status", "start_date", "end_date", "description", "department") VALUES 
('10000000-0000-0000-0000-000000000009', '2017-18', 'Inactive', '2017-06-01 00:00:00', '2018-05-31 23:59:59', 'Academic Year 2017-18', 'All') ON CONFLICT DO NOTHING;

INSERT INTO public.academic_years ("id", "academic_year", "status", "start_date", "end_date", "description", "department") VALUES 
('10000000-0000-0000-0000-000000000010', '2016-17', 'Inactive', '2016-06-01 00:00:00', '2017-05-31 23:59:59', 'Academic Year 2016-17', 'All') ON CONFLICT DO NOTHING;

INSERT INTO public.academic_years ("id", "academic_year", "status", "start_date", "end_date", "description", "department") VALUES 
('10000000-0000-0000-0000-000000000011', '2015-16', 'Inactive', '2015-06-01 00:00:00', '2016-05-31 23:59:59', 'Academic Year 2015-16', 'All') ON CONFLICT DO NOTHING;

INSERT INTO public.academic_years ("id", "academic_year", "status", "start_date", "end_date", "description", "department") VALUES 
('10000000-0000-0000-0000-000000000012', '2026-27', 'Planned', '2026-06-01 00:00:00', '2027-05-31 23:59:59', 'Academic Year 2026-27', 'All') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
