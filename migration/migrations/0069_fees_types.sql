-- Migration for fees_types table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.fees_types (
    "fee_type_id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "fee_type_name" TEXT,
    "category" TEXT,
    "description" TEXT,
    "amount" DOUBLE PRECISION,
    "applicable_classes" TEXT,
    "frequency" TEXT,
    "status" TEXT,
    "created_by" TEXT,
    "created_date" TIMESTAMP,
    "last_updated" TIMESTAMP
);

INSERT INTO public.fees_types ("fee_type_id", "fee_type_name", "category", "description", "amount", "applicable_classes", "frequency", "status", "created_by", "created_date", "last_updated") VALUES 
('11111111-1111-1111-1111-111111111111', 'Tuition Fee', 'Academic', 'Fee for academic tuition services', 15000, 'Class 1-10', 'Monthly', 'Inactive', 'Admin', '2024-11-01', '2024-11-20') ON CONFLICT DO NOTHING;

INSERT INTO public.fees_types ("fee_type_id", "fee_type_name", "category", "description", "amount", "applicable_classes", "frequency", "status", "created_by", "created_date", "last_updated") VALUES 
('22222222-2222-2222-2222-222222222222', 'Transport Fee', 'Miscellaneous', 'Fee for student transport services', 5000, 'Class 1-12', 'Monthly', 'Active', 'Admin', '2024-10-15', '2024-11-18') ON CONFLICT DO NOTHING;

INSERT INTO public.fees_types ("fee_type_id", "fee_type_name", "category", "description", "amount", "applicable_classes", "frequency", "status", "created_by", "created_date", "last_updated") VALUES 
('33333333-3333-3333-3333-333333333333', 'Library Fee', 'Academic', 'Fee for library maintenance', 2000, 'Class 6-12', 'Annually', 'Active', 'Admin', '2024-09-20', '2024-11-10') ON CONFLICT DO NOTHING;

INSERT INTO public.fees_types ("fee_type_id", "fee_type_name", "category", "description", "amount", "applicable_classes", "frequency", "status", "created_by", "created_date", "last_updated") VALUES 
('44444444-4444-4444-4444-444444444444', 'Sports Fee', 'Extracurricular', 'Fee for sports activities and facilities', 3000, 'Class 1-10', 'Annually', 'Inactive', 'Admin', '2024-08-10', '2024-11-05') ON CONFLICT DO NOTHING;

INSERT INTO public.fees_types ("fee_type_id", "fee_type_name", "category", "description", "amount", "applicable_classes", "frequency", "status", "created_by", "created_date", "last_updated") VALUES 
('55555555-5555-5555-5555-555555555555', 'Lab Fee', 'Academic', 'Fee for science lab usage and equipment', 4000, 'Class 9-12', 'Annually', 'Active', 'Admin', '2024-07-25', '2024-11-12') ON CONFLICT DO NOTHING;

INSERT INTO public.fees_types ("fee_type_id", "fee_type_name", "category", "description", "amount", "applicable_classes", "frequency", "status", "created_by", "created_date", "last_updated") VALUES 
('66666666-6666-6666-6666-666666666666', 'Examination Fee', 'Academic', 'Fee for conducting exams', 2500, 'Class 1-12', 'Annually', 'Active', 'Admin', '2024-06-01', '2024-10-30') ON CONFLICT DO NOTHING;

INSERT INTO public.fees_types ("fee_type_id", "fee_type_name", "category", "description", "amount", "applicable_classes", "frequency", "status", "created_by", "created_date", "last_updated") VALUES 
('77777777-7777-7777-7777-777777777777', 'Development Fee', 'Academic', 'Fee for school infrastructure development', 10000, 'Class 1-12', 'Quarterly', 'Inactive', 'Admin', '2024-05-15', '2024-11-15') ON CONFLICT DO NOTHING;

INSERT INTO public.fees_types ("fee_type_id", "fee_type_name", "category", "description", "amount", "applicable_classes", "frequency", "status", "created_by", "created_date", "last_updated") VALUES 
('88888888-8888-8888-8888-888888888888', 'Hostel Fee', 'Miscellaneous', 'Fee for boarding and lodging in the school hostel', 50000, 'Class 6-12', 'Quarterly', 'Active', 'Admin', '2024-04-01', '2024-11-01') ON CONFLICT DO NOTHING;

INSERT INTO public.fees_types ("fee_type_id", "fee_type_name", "category", "description", "amount", "applicable_classes", "frequency", "status", "created_by", "created_date", "last_updated") VALUES 
('99999999-9999-9999-9999-999999999999', 'Maintenance Fee', 'Miscellaneous', 'Fee for general school maintenance', 2000, 'Class 1-12', 'Annually', 'Active', 'Admin', '2024-03-15', '2024-11-20') ON CONFLICT DO NOTHING;

INSERT INTO public.fees_types ("fee_type_id", "fee_type_name", "category", "description", "amount", "applicable_classes", "frequency", "status", "created_by", "created_date", "last_updated") VALUES 
('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'Cultural Activities Fee', 'Extracurricular', 'Fee for participation in cultural events', 1500, 'Class 1-12', 'Annually', 'Active', 'Admin', '2024-02-10', '2024-11-14') ON CONFLICT DO NOTHING;

INSERT INTO public.fees_types ("fee_type_id", "fee_type_name", "category", "description", "amount", "applicable_classes", "frequency", "status", "created_by", "created_date", "last_updated") VALUES 
('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'Computer Lab Fee', 'Academic', 'Fee for computer lab access', 3000, 'Class 6-12', 'Annually', 'Active', 'Admin', '2024-01-25', '2024-11-05') ON CONFLICT DO NOTHING;

INSERT INTO public.fees_types ("fee_type_id", "fee_type_name", "category", "description", "amount", "applicable_classes", "frequency", "status", "created_by", "created_date", "last_updated") VALUES 
('cccccccc-cccc-cccc-cccc-cccccccccccc', 'Workshop Fee', 'Academic', 'Fee for attending workshops', 5000, 'Class 9-12', 'Per Event', 'Inactive', 'Admin', '2024-01-01', '2024-11-08') ON CONFLICT DO NOTHING;

INSERT INTO public.fees_types ("fee_type_id", "fee_type_name", "category", "description", "amount", "applicable_classes", "frequency", "status", "created_by", "created_date", "last_updated") VALUES 
('dddddddd-dddd-dddd-dddd-dddddddddddd', 'Medical Fee', 'Miscellaneous', 'Fee for medical facilities and emergencies', 1000, 'Class 1-12', 'Annually', 'Inactive', 'Admin', '2023-12-15', '2024-11-10') ON CONFLICT DO NOTHING;

INSERT INTO public.fees_types ("fee_type_id", "fee_type_name", "category", "description", "amount", "applicable_classes", "frequency", "status", "created_by", "created_date", "last_updated") VALUES 
('eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee', 'Uniform Fee', 'Miscellaneous', 'Fee for school uniforms', 3000, 'Class 1-12', 'Annually', 'Active', 'Admin', '2023-12-01', '2024-11-03') ON CONFLICT DO NOTHING;

INSERT INTO public.fees_types ("fee_type_id", "fee_type_name", "category", "description", "amount", "applicable_classes", "frequency", "status", "created_by", "created_date", "last_updated") VALUES 
('ffffffff-ffff-ffff-ffff-ffffffffffff', 'Miscellaneous Fee', 'Miscellaneous', 'Fee for other general purposes', 1000, 'Class 1-12', 'Annually', 'Active', 'Admin', '2023-11-20', '2024-11-15') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
