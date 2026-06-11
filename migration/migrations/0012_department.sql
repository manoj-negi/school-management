-- Migration for department table derived from department.json
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.department (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "img" TEXT,
    "department_name" TEXT,
    "hod" TEXT,
    "phone" TEXT,
    "email" TEXT,
    "student_capacity" TEXT,
    "established_year" TEXT,
    "total_faculty" TEXT
);
INSERT INTO public.department ("id", "img", "department_name", "hod", "phone", "email", "student_capacity", "established_year", "total_faculty") VALUES ('b86926ff-7032-3463-97f3-f6fe54fa5f79', 'assets/images/user/user1.jpg', 'mechanical', 'Pooja Sarma', '(123)456789', 'test@example.com', '125', '1985', '30') ON CONFLICT DO NOTHING;
INSERT INTO public.department ("id", "img", "department_name", "hod", "phone", "email", "student_capacity", "established_year", "total_faculty") VALUES ('38196a1a-314f-3313-b74f-d77a649891fc', 'assets/images/user/user2.jpg', 'civil', 'Sanjay Chohan', '(123)456789', 'test@example.com', '300', '1989', '25') ON CONFLICT DO NOTHING;
INSERT INTO public.department ("id", "img", "department_name", "hod", "phone", "email", "student_capacity", "established_year", "total_faculty") VALUES ('e1467cbd-f3e8-3a16-9e1d-f9f6b008b3cf', 'assets/images/user/user3.jpg', 'science', 'Sarah Smith', '(123)456789', 'test@example.com', '100', '2014', '15') ON CONFLICT DO NOTHING;
INSERT INTO public.department ("id", "img", "department_name", "hod", "phone", "email", "student_capacity", "established_year", "total_faculty") VALUES ('46c10a32-8795-3fd6-9812-0d1968e22a4f', 'assets/images/user/user4.jpg', 'mathematics', 'Ashton Cox', '(123)456789', 'test@example.com', '300', '2001', '20') ON CONFLICT DO NOTHING;
INSERT INTO public.department ("id", "img", "department_name", "hod", "phone", "email", "student_capacity", "established_year", "total_faculty") VALUES ('0c396c3b-87b3-3b51-b95b-630265a30114', 'assets/images/user/user5.jpg', 'computer', 'Rajesh Malhotra', '(123)456789', 'test@example.com', '250', '1999', '18') ON CONFLICT DO NOTHING;
INSERT INTO public.department ("id", "img", "department_name", "hod", "phone", "email", "student_capacity", "established_year", "total_faculty") VALUES ('b6bf4775-98a6-33c7-9548-1ee78c52c503', 'assets/images/user/user6.jpg', 'civil', 'Sanjana Patil', '(123)456789', 'test@example.com', '200', '1989', '25') ON CONFLICT DO NOTHING;
INSERT INTO public.department ("id", "img", "department_name", "hod", "phone", "email", "student_capacity", "established_year", "total_faculty") VALUES ('091a57cc-401b-3c73-a397-b384e51eb422', 'assets/images/user/user7.jpg', 'automobile', 'Airi Satou', '(123)456789', 'test@example.com', '125', '1998', '10') ON CONFLICT DO NOTHING;
INSERT INTO public.department ("id", "img", "department_name", "hod", "phone", "email", "student_capacity", "established_year", "total_faculty") VALUES ('d3216746-e1fe-3740-8e91-41a3448fac99', 'assets/images/user/user8.jpg', 'civil', 'Pooja Sarma', '(123)456789', 'test@example.com', '130', '2001', '20') ON CONFLICT DO NOTHING;
INSERT INTO public.department ("id", "img", "department_name", "hod", "phone", "email", "student_capacity", "established_year", "total_faculty") VALUES ('99ba2b89-5651-369b-9fb7-159004068651', 'assets/images/user/user9.jpg', 'mathematics', 'Sarah Smith', '(123)456789', 'test@example.com', '100', '2009', '15') ON CONFLICT DO NOTHING;
INSERT INTO public.department ("id", "img", "department_name", "hod", "phone", "email", "student_capacity", "established_year", "total_faculty") VALUES ('b6084a27-c6a1-3d7f-983b-e78e42e969f4', 'assets/images/user/user10.jpg', 'management', 'Rajesh Malhotra', '(123)456789', 'test@example.com', '125', '1989', '12') ON CONFLICT DO NOTHING;
INSERT INTO public.department ("id", "img", "department_name", "hod", "phone", "email", "student_capacity", "established_year", "total_faculty") VALUES ('3a567d23-1af3-3877-804c-98e5c4e491fd', 'assets/images/user/user11.jpg', 'computer', 'Sanjay Chohan', '(123)456789', 'test@example.com', '300', '2001', '20') ON CONFLICT DO NOTHING;
INSERT INTO public.department ("id", "img", "department_name", "hod", "phone", "email", "student_capacity", "established_year", "total_faculty") VALUES ('b2e64cd7-87d0-3ad9-a035-0a36649d73f8', 'assets/images/user/user1.jpg', 'science', 'Pooja Sarma', '(123)456789', 'test@example.com', '100', '1986', '15') ON CONFLICT DO NOTHING;
INSERT INTO public.department ("id", "img", "department_name", "hod", "phone", "email", "student_capacity", "established_year", "total_faculty") VALUES ('f25d9168-f250-3449-aaed-9313677d57c9', 'assets/images/user/user2.jpg', 'science', 'Sanjana Patil', '(123)456789', 'test@example.com', '250', '2014', '15') ON CONFLICT DO NOTHING;
INSERT INTO public.department ("id", "img", "department_name", "hod", "phone", "email", "student_capacity", "established_year", "total_faculty") VALUES ('6b5a9518-8dae-3248-bc9c-d1ca4ad7ae54', 'assets/images/user/user3.jpg', 'automobile', 'Airi Satou', '(123)456789', 'test@example.com', '200', '1998', '10') ON CONFLICT DO NOTHING;
INSERT INTO public.department ("id", "img", "department_name", "hod", "phone", "email", "student_capacity", "established_year", "total_faculty") VALUES ('c8dbddc6-181a-3146-ab8f-8bc59c26754e', 'assets/images/user/user4.jpg', 'mathematics', 'Ashton Cox', '(123)456789', 'test@example.com', '130', '2009', '15') ON CONFLICT DO NOTHING;
INSERT INTO public.department ("id", "img", "department_name", "hod", "phone", "email", "student_capacity", "established_year", "total_faculty") VALUES ('fdc45d12-24a3-3a48-b139-ede59988880b', 'assets/images/user/user5.jpg', 'mechanical', 'Sarah Smith', '(123)456789', 'test@example.com', '250', '1989', '30') ON CONFLICT DO NOTHING;
SET session_replication_role = 'origin';
