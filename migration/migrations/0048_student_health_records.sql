-- Migration for student_health_records table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.student_health_records (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "img" TEXT,
    "student_name" TEXT NOT NULL,
    "blood_group" TEXT NOT NULL,
    "allergies" TEXT,
    "last_checkup" TIMESTAMP NOT NULL,
    "status" TEXT NOT NULL
);

INSERT INTO public.student_health_records ("id", "img", "student_name", "blood_group", "allergies", "last_checkup", "status") VALUES
('111a86c8-3d0d-32d5-92b9-98783708e83b', 'assets/images/user/user1.jpg', 'John Doe', 'A+', 'Peanuts', '2023-12-05T00:00:00Z', 'Fit') ON CONFLICT DO NOTHING;
INSERT INTO public.student_health_records ("id", "img", "student_name", "blood_group", "allergies", "last_checkup", "status") VALUES
('222b8564-e8a9-3c53-ab1b-29c81d1e909f', 'assets/images/user/user2.jpg', 'Sarah Smith', 'O-', 'None', '2023-11-20T00:00:00Z', 'Unfit') ON CONFLICT DO NOTHING;
INSERT INTO public.student_health_records ("id", "img", "student_name", "blood_group", "allergies", "last_checkup", "status") VALUES
('333c9adb-5580-36cb-b062-7911008ec58f', 'assets/images/user/user3.jpg', 'Michael Brown', 'B+', 'Dust', '2023-10-15T00:00:00Z', 'Under Treatment') ON CONFLICT DO NOTHING;
INSERT INTO public.student_health_records ("id", "img", "student_name", "blood_group", "allergies", "last_checkup", "status") VALUES
('444d0fc6-4059-35ed-ac35-87d5faccb3ef', 'assets/images/user/user4.jpg', 'Emily Davis', 'AB+', 'Lactose', '2023-09-10T00:00:00Z', 'Fit') ON CONFLICT DO NOTHING;
INSERT INTO public.student_health_records ("id", "img", "student_name", "blood_group", "allergies", "last_checkup", "status") VALUES
('5555e634-2155-3639-957f-5bbd1495436f', 'assets/images/user/user5.jpg', 'David Wilson', 'A-', 'None', '2023-08-25T00:00:00Z', 'Fit') ON CONFLICT DO NOTHING;
INSERT INTO public.student_health_records ("id", "img", "student_name", "blood_group", "allergies", "last_checkup", "status") VALUES
('666fae88-b6da-38cc-b408-148dccc5069f', 'assets/images/user/user6.jpg', 'Jessica Taylor', 'B-', 'Pollen', '2023-07-15T00:00:00Z', 'Fit') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
