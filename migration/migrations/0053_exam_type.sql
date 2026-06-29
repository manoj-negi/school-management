-- Migration for exam_types table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.exam_types (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "exam_name" TEXT NOT NULL,
    "exam_code" TEXT UNIQUE NOT NULL,
    "description" TEXT,
    "status" TEXT
);

INSERT INTO public.exam_types ("id", "exam_name", "exam_code", "description", "status") VALUES
('1ea88778-d567-4638-b7ab-0f7962451f51', 'Internal Assessment 1', 'IA1', 'First internal assessment for semester', 'Active'),
('2da9bf02-e254-47ad-8ef0-df6a4401df52', 'Internal Assessment 2', 'IA2', 'Second internal assessment for semester', 'Active'),
('30fbe937-2cf3-4c91-a1e6-df06a735c253', 'Mid-Term Examination', 'MTE', 'Mid-semester examination', 'Active'),
('4a741a31-15c9-4b62-bbbe-e28a6fcf7854', 'End-Term Examination', 'ETE', 'Final semester examination', 'Active'),
('53b1c672-8f96-419b-bf72-8e1216afb755', 'Practical Examination', 'PRC', 'Practical/Lab assessment', 'Active'),
('6d51ca21-bf96-41ab-bc72-8c11e7af1856', 'Viva Voce', 'VVA', 'Oral examination', 'Active'),
('705a9cde-bcda-411a-8cbe-e75294bc1857', 'Special Supplementary', 'SUP', 'Backlog/Supplementary exam', 'Inactive'),
('8cfa7bcd-e254-47f3-8efd-c78216afde58', 'Entrance Test', 'ENT', 'Admission entrance test', 'Active'),
('9cda6f23-cfd0-4bf3-ae7d-e7f016afd259', 'Aptitude Test', 'APT', 'General aptitude assessment', 'Active'),
('03cbfd72-adcf-41ab-ae7d-d1296bfd3150', 'Quarterly Exam', 'QTR', 'Quarterly school assessment', 'Active')
ON CONFLICT DO NOTHING;
SET session_replication_role = 'origin';
