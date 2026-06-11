-- Migration for department table derived from department.json
SET session_replication_role = 'replica';

CREATE TABLE IF NOT EXISTS public.department (
    "id" TEXT PRIMARY KEY,
    "img" TEXT,
    "department_name" TEXT,
    "hod" TEXT,
    "phone" TEXT,
    "email" TEXT,
    "student_capacity" TEXT,
    "established_year" TEXT,
    "total_faculty" TEXT
);

INSERT INTO public.department ("id", "img", "department_name", "hod", "phone", "email", "student_capacity", "established_year", "total_faculty") VALUES ('001', 'assets/images/user/user1.jpg', 'mechanical', 'Pooja Sarma', '(123)456789', 'test@example.com', '125', '1985', '30') ON CONFLICT DO NOTHING;
INSERT INTO public.department ("id", "img", "department_name", "hod", "phone", "email", "student_capacity", "established_year", "total_faculty") VALUES ('002', 'assets/images/user/user2.jpg', 'civil', 'Sanjay Chohan', '(123)456789', 'test@example.com', '300', '1989', '25') ON CONFLICT DO NOTHING;
INSERT INTO public.department ("id", "img", "department_name", "hod", "phone", "email", "student_capacity", "established_year", "total_faculty") VALUES ('003', 'assets/images/user/user3.jpg', 'science', 'Sarah Smith', '(123)456789', 'test@example.com', '100', '2014', '15') ON CONFLICT DO NOTHING;
INSERT INTO public.department ("id", "img", "department_name", "hod", "phone", "email", "student_capacity", "established_year", "total_faculty") VALUES ('004', 'assets/images/user/user4.jpg', 'mathematics', 'Ashton Cox', '(123)456789', 'test@example.com', '300', '2001', '20') ON CONFLICT DO NOTHING;
INSERT INTO public.department ("id", "img", "department_name", "hod", "phone", "email", "student_capacity", "established_year", "total_faculty") VALUES ('005', 'assets/images/user/user5.jpg', 'computer', 'Rajesh Malhotra', '(123)456789', 'test@example.com', '250', '1999', '18') ON CONFLICT DO NOTHING;
INSERT INTO public.department ("id", "img", "department_name", "hod", "phone", "email", "student_capacity", "established_year", "total_faculty") VALUES ('006', 'assets/images/user/user6.jpg', 'civil', 'Sanjana Patil', '(123)456789', 'test@example.com', '200', '1989', '25') ON CONFLICT DO NOTHING;
INSERT INTO public.department ("id", "img", "department_name", "hod", "phone", "email", "student_capacity", "established_year", "total_faculty") VALUES ('007', 'assets/images/user/user7.jpg', 'automobile', 'Airi Satou', '(123)456789', 'test@example.com', '125', '1998', '10') ON CONFLICT DO NOTHING;
INSERT INTO public.department ("id", "img", "department_name", "hod", "phone", "email", "student_capacity", "established_year", "total_faculty") VALUES ('008', 'assets/images/user/user8.jpg', 'civil', 'Pooja Sarma', '(123)456789', 'test@example.com', '130', '2001', '20') ON CONFLICT DO NOTHING;
INSERT INTO public.department ("id", "img", "department_name", "hod", "phone", "email", "student_capacity", "established_year", "total_faculty") VALUES ('009', 'assets/images/user/user9.jpg', 'mathematics', 'Sarah Smith', '(123)456789', 'test@example.com', '100', '2009', '15') ON CONFLICT DO NOTHING;
INSERT INTO public.department ("id", "img", "department_name", "hod", "phone", "email", "student_capacity", "established_year", "total_faculty") VALUES ('010', 'assets/images/user/user10.jpg', 'management', 'Rajesh Malhotra', '(123)456789', 'test@example.com', '125', '1989', '12') ON CONFLICT DO NOTHING;
INSERT INTO public.department ("id", "img", "department_name", "hod", "phone", "email", "student_capacity", "established_year", "total_faculty") VALUES ('011', 'assets/images/user/user11.jpg', 'computer', 'Sanjay Chohan', '(123)456789', 'test@example.com', '300', '2001', '20') ON CONFLICT DO NOTHING;
INSERT INTO public.department ("id", "img", "department_name", "hod", "phone", "email", "student_capacity", "established_year", "total_faculty") VALUES ('012', 'assets/images/user/user1.jpg', 'science', 'Pooja Sarma', '(123)456789', 'test@example.com', '100', '1986', '15') ON CONFLICT DO NOTHING;
INSERT INTO public.department ("id", "img", "department_name", "hod", "phone", "email", "student_capacity", "established_year", "total_faculty") VALUES ('013', 'assets/images/user/user2.jpg', 'science', 'Sanjana Patil', '(123)456789', 'test@example.com', '250', '2014', '15') ON CONFLICT DO NOTHING;
INSERT INTO public.department ("id", "img", "department_name", "hod", "phone", "email", "student_capacity", "established_year", "total_faculty") VALUES ('014', 'assets/images/user/user3.jpg', 'automobile', 'Airi Satou', '(123)456789', 'test@example.com', '200', '1998', '10') ON CONFLICT DO NOTHING;
INSERT INTO public.department ("id", "img", "department_name", "hod", "phone", "email", "student_capacity", "established_year", "total_faculty") VALUES ('015', 'assets/images/user/user4.jpg', 'mathematics', 'Ashton Cox', '(123)456789', 'test@example.com', '130', '2009', '15') ON CONFLICT DO NOTHING;
INSERT INTO public.department ("id", "img", "department_name", "hod", "phone", "email", "student_capacity", "established_year", "total_faculty") VALUES ('016', 'assets/images/user/user5.jpg', 'mechanical', 'Sarah Smith', '(123)456789', 'test@example.com', '250', '1989', '30') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';