-- Migration for employee_salary table derived from employee-salary.json
SET session_replication_role = 'replica';

CREATE TABLE IF NOT EXISTS public.employee_salary (
    "id" TEXT PRIMARY KEY,
    "img" TEXT,
    "role" TEXT,
    "email" TEXT,
    "payslip" TEXT,
    "department" TEXT,
    "emp_id" TEXT,
    "name" TEXT,
    "salary" TEXT,
    "bonus" TEXT,
    "deductions" TEXT,
    "net_salary" TEXT
);

INSERT INTO public.employee_salary ("id", "img", "role", "email", "payslip", "department", "emp_id", "name", "salary", "bonus", "deductions", "net_salary") VALUES ('001', 'assets/images/user/user1.jpg', 'Math Teacher', 'test@email.com', 'download', 'Mathematics', 'EMP-5287', 'John Doe', '$2,574', '$200', '$100', '$2,674') ON CONFLICT DO NOTHING;
INSERT INTO public.employee_salary ("id", "img", "role", "email", "payslip", "department", "emp_id", "name", "salary", "bonus", "deductions", "net_salary") VALUES ('002', 'assets/images/user/user2.jpg', 'Head of Science Department', 'test@email.com', 'download', 'Science', 'EMP-5288', 'Sarah Smith', '$3,587', '$300', '$150', '$3,737') ON CONFLICT DO NOTHING;
INSERT INTO public.employee_salary ("id", "img", "role", "email", "payslip", "department", "emp_id", "name", "salary", "bonus", "deductions", "net_salary") VALUES ('003', 'assets/images/user/user3.jpg', 'Senior History Teacher', 'test@email.com', 'download', 'History', 'EMP-4587', 'Rajesh', '$7,897', '$500', '$200', '$8,197') ON CONFLICT DO NOTHING;
INSERT INTO public.employee_salary ("id", "img", "role", "email", "payslip", "department", "emp_id", "name", "salary", "bonus", "deductions", "net_salary") VALUES ('004', 'assets/images/user/user4.jpg', 'School Technician', 'test@email.com', 'download', 'Technology', 'EMP-7852', 'Jay Soni', '$2,697', '$150', '$80', '$2,767') ON CONFLICT DO NOTHING;
INSERT INTO public.employee_salary ("id", "img", "role", "email", "payslip", "department", "emp_id", "name", "salary", "bonus", "deductions", "net_salary") VALUES ('005', 'assets/images/user/user5.jpg', 'Lab Technician', 'test@email.com', 'download', 'Science', 'EMP-1478', 'Rajesh', '$6,587', '$400', '$200', '$6,787') ON CONFLICT DO NOTHING;
INSERT INTO public.employee_salary ("id", "img", "role", "email", "payslip", "department", "emp_id", "name", "salary", "bonus", "deductions", "net_salary") VALUES ('006', 'assets/images/user/user6.jpg', 'Junior Teacher', 'test@email.com', 'download', 'English', 'EMP-5847', 'John Doe', '$8,256', '$600', '$250', '$8,606') ON CONFLICT DO NOTHING;
INSERT INTO public.employee_salary ("id", "img", "role", "email", "payslip", "department", "emp_id", "name", "salary", "bonus", "deductions", "net_salary") VALUES ('007', 'assets/images/user/user7.jpg', 'Teaching Assistant', 'test@email.com', 'download', 'Health Center', 'EMP-3658', 'Cara Stevens', '$7,112', '$350', '$150', '$7,312') ON CONFLICT DO NOTHING;
INSERT INTO public.employee_salary ("id", "img", "role", "email", "payslip", "department", "emp_id", "name", "salary", "bonus", "deductions", "net_salary") VALUES ('008', 'assets/images/user/user8.jpg', 'Admin Assistant', 'test@email.com', 'download', 'Health Center', 'EMP-2598', 'Jay Soni', '$8,256', '$500', '$300', '$8,456') ON CONFLICT DO NOTHING;
INSERT INTO public.employee_salary ("id", "img", "role", "email", "payslip", "department", "emp_id", "name", "salary", "bonus", "deductions", "net_salary") VALUES ('009', 'assets/images/user/user9.jpg', 'Librarian', 'test@email.com', 'download', 'Library', 'EMP-1254', 'Angelica Ramos', '$7,758', '$450', '$200', '$8,008') ON CONFLICT DO NOTHING;
INSERT INTO public.employee_salary ("id", "img", "role", "email", "payslip", "department", "emp_id", "name", "salary", "bonus", "deductions", "net_salary") VALUES ('010', 'assets/images/user/user10.jpg', 'Principal', 'test@email.com', 'download', 'Management', 'EMP-5896', 'Airi Satou', '$6,665', '$350', '$150', '$6,865') ON CONFLICT DO NOTHING;
INSERT INTO public.employee_salary ("id", "img", "role", "email", "payslip", "department", "emp_id", "name", "salary", "bonus", "deductions", "net_salary") VALUES ('011', 'assets/images/user/user1.jpg', 'Junior Teacher', 'test@email.com', 'download', 'Math', 'EMP-9658', 'Jay Soni', '$1,289', '$50', '$30', '$1,309') ON CONFLICT DO NOTHING;
INSERT INTO public.employee_salary ("id", "img", "role", "email", "payslip", "department", "emp_id", "name", "salary", "bonus", "deductions", "net_salary") VALUES ('012', 'assets/images/user/user1.jpg', 'Junior Teacher', 'test@email.com', 'download', 'Science', 'EMP-8965', 'Cara Stevens', '$8,969', '$700', '$350', '$9,319') ON CONFLICT DO NOTHING;
INSERT INTO public.employee_salary ("id", "img", "role", "email", "payslip", "department", "emp_id", "name", "salary", "bonus", "deductions", "net_salary") VALUES ('013', 'assets/images/user/user2.jpg', 'Department Head (English)', 'test@email.com', 'download', 'English', 'EMP-7852', 'Sarah Smith', '$7,525', '$600', '$250', '$7,875') ON CONFLICT DO NOTHING;
INSERT INTO public.employee_salary ("id", "img", "role", "email", "payslip", "department", "emp_id", "name", "salary", "bonus", "deductions", "net_salary") VALUES ('014', 'assets/images/user/user3.jpg', 'School Administrator', 'test@email.com', 'download', 'Administration', 'EMP-1298', 'Ashton Cox', '$4,669', '$300', '$100', '$4,869') ON CONFLICT DO NOTHING;
INSERT INTO public.employee_salary ("id", "img", "role", "email", "payslip", "department", "emp_id", "name", "salary", "bonus", "deductions", "net_salary") VALUES ('015', 'assets/images/user/user4.jpg', 'Teaching Assistant', 'test@email.com', 'download', 'Outreach Programs', 'EMP-3325', 'Jay Soni', '$2,658', '$100', '$50', '$2,708') ON CONFLICT DO NOTHING;
INSERT INTO public.employee_salary ("id", "img", "role", "email", "payslip", "department", "emp_id", "name", "salary", "bonus", "deductions", "net_salary") VALUES ('016', 'assets/images/user/user5.jpg', 'Admin Assistant', 'test@email.com', 'download', 'Administration', 'EMP-4896', 'Angelica Ramos', '$4,897', '$250', '$100', '$5,047') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';