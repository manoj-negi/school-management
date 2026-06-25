-- Migration for student_promotion table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.student_promotion (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "img" TEXT,
    "student_name" TEXT,
    "roll_no" TEXT,
    "current_class" TEXT,
    "promoted_class" TEXT,
    "section" TEXT,
    "session" TEXT,
    "promotion_date" TIMESTAMP,
    "total_marks" INTEGER,
    "obtained_marks" INTEGER,
    "percentage" TEXT,
    "result" TEXT,
    "status" TEXT
);

INSERT INTO public.student_promotion ("id", "img", "student_name", "roll_no", "current_class", "promoted_class", "section", "session", "promotion_date", "total_marks", "obtained_marks", "percentage", "result", "status") VALUES
('555d86c8-3d0d-32d5-92b9-98783708e82a', 'assets/images/user/user1.jpg', 'John Doe', '101', 'Grade 5', 'Grade 6', 'A', '2023-2024', '2024-06-15T00:00:00Z', 500, 450, '90%', 'Pass', 'Promoted') ON CONFLICT DO NOTHING;
INSERT INTO public.student_promotion ("id", "img", "student_name", "roll_no", "current_class", "promoted_class", "section", "session", "promotion_date", "total_marks", "obtained_marks", "percentage", "result", "status") VALUES
('90b58564-e8a9-3c53-ab1b-29c81d1e908e', 'assets/images/user/user2.jpg', 'Sarah Smith', '102', 'Grade 5', 'Grade 6', 'B', '2023-2024', '2024-06-15T00:00:00Z', 500, 420, '84%', 'Pass', 'Promoted') ON CONFLICT DO NOTHING;
INSERT INTO public.student_promotion ("id", "img", "student_name", "roll_no", "current_class", "promoted_class", "section", "session", "promotion_date", "total_marks", "obtained_marks", "percentage", "result", "status") VALUES
('19d59adb-5580-36cb-b062-7911008ec577', 'assets/images/user/user3.jpg', 'Michael Brown', '103', 'Grade 5', 'Grade 6', 'A', '2023-2024', '2024-06-15T00:00:00Z', 500, 380, '76%', 'Pass', 'Promoted') ON CONFLICT DO NOTHING;
INSERT INTO public.student_promotion ("id", "img", "student_name", "roll_no", "current_class", "promoted_class", "section", "session", "promotion_date", "total_marks", "obtained_marks", "percentage", "result", "status") VALUES
('8ae00fc6-4059-35ed-ac35-87d5faccb2ee', 'assets/images/user/user4.jpg', 'Emily Davis', '104', 'Grade 4', 'Grade 5', 'C', '2023-2024', '2024-06-15T00:00:00Z', 500, 470, '94%', 'Pass', 'Promoted') ON CONFLICT DO NOTHING;
INSERT INTO public.student_promotion ("id", "img", "student_name", "roll_no", "current_class", "promoted_class", "section", "session", "promotion_date", "total_marks", "obtained_marks", "percentage", "result", "status") VALUES
('2459f634-2155-3639-957f-5bbd14954268', 'assets/images/user/user5.jpg', 'David Wilson', '105', 'Grade 4', 'Grade 5', 'B', '2023-2024', '2024-06-15T00:00:00Z', 500, 310, '62%', 'Pass', 'Promoted') ON CONFLICT DO NOTHING;
INSERT INTO public.student_promotion ("id", "img", "student_name", "roll_no", "current_class", "promoted_class", "section", "session", "promotion_date", "total_marks", "obtained_marks", "percentage", "result", "status") VALUES
('a468ae88-b6da-38cc-b408-148dccc5059e', 'assets/images/user/user6.jpg', 'Jessica Taylor', '106', 'Grade 4', 'Grade 4', 'A', '2023-2024', '2024-06-15T00:00:00Z', 500, 150, '30%', 'Fail', 'Detained') ON CONFLICT DO NOTHING;
INSERT INTO public.student_promotion ("id", "img", "student_name", "roll_no", "current_class", "promoted_class", "section", "session", "promotion_date", "total_marks", "obtained_marks", "percentage", "result", "status") VALUES
('28b72bf7-f1c7-36b2-a620-9cc8566f1c66', 'assets/images/user/user7.jpg', 'Kevin Anderson', '107', 'Grade 3', 'Grade 4', 'B', '2023-2024', '2024-06-15T00:00:00Z', 500, 400, '80%', 'Pass', 'Promoted') ON CONFLICT DO NOTHING;
INSERT INTO public.student_promotion ("id", "img", "student_name", "roll_no", "current_class", "promoted_class", "section", "session", "promotion_date", "total_marks", "obtained_marks", "percentage", "result", "status") VALUES
('5ce99ec6-7a5e-30c5-ab64-56e7c2745e22', 'assets/images/user/user8.jpg', 'Linda Martinez', '108', 'Grade 3', 'Grade 4', 'C', '2023-2024', '2024-06-15T00:00:00Z', 500, 430, '86%', 'Pass', 'Promoted') ON CONFLICT DO NOTHING;
INSERT INTO public.student_promotion ("id", "img", "student_name", "roll_no", "current_class", "promoted_class", "section", "session", "promotion_date", "total_marks", "obtained_marks", "percentage", "result", "status") VALUES
('9192fc2c-6ee0-3ec9-886c-d0f941afa032', 'assets/images/user/user9.jpg', 'Robert Thomas', '109', 'Grade 3', 'Grade 4', 'A', '2023-2024', '2024-06-15T00:00:00Z', 500, 390, '78%', 'Pass', 'Promoted') ON CONFLICT DO NOTHING;
INSERT INTO public.student_promotion ("id", "img", "student_name", "roll_no", "current_class", "promoted_class", "section", "session", "promotion_date", "total_marks", "obtained_marks", "percentage", "result", "status") VALUES
('211c960b-a164-30f8-92c4-5dbc1add5a44', 'assets/images/user/user10.jpg', 'Jennifer Lee', '110', 'Grade 2', 'Grade 3', 'B', '2023-2024', '2024-06-15T00:00:00Z', 500, 460, '92%', 'Pass', 'Promoted') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';
