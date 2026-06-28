-- Migration for online_applications table
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.online_applications (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "img" TEXT,
    "student_name" TEXT,
    "application_no" TEXT UNIQUE NOT NULL,
    "email" TEXT,
    "mobile" TEXT,
    "gender" TEXT,
    "date_of_birth" TIMESTAMP,
    "course" TEXT,
    "application_date" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    "payment_status" TEXT,
    "application_status" TEXT
);

INSERT INTO public.online_applications ("id", "img", "student_name", "application_no", "email", "mobile", "gender", "date_of_birth", "course", "application_date", "payment_status", "application_status") VALUES
('9ba44778-d567-4638-b7ab-0f7962451f21', 'assets/images/user/user1.jpg', 'John Doe', 'APP001', 'john@example.com', '1234567890', 'Male', '2005-05-15', 'Computer Science', '2023-11-01', 'Paid', 'Approved'),
('6ca9bf02-e254-47ad-8ef0-df6a4401df22', 'assets/images/user/user2.jpg', 'Jane Smith', 'APP002', 'jane@example.com', '2345678901', 'Female', '2005-06-20', 'Business Admin', '2023-11-02', 'Paid', 'Pending'),
('b0fbe937-2cf3-4c91-a1e6-df06a735c223', 'assets/images/user/user3.jpg', 'Mike Ross', 'APP003', 'mike@example.com', '3456789012', 'Male', '2005-07-10', 'Law', '2023-11-03', 'Unpaid', 'Draft'),
('da741a31-15c9-4b62-bbbe-e28a6fcf7824', 'assets/images/user/user4.jpg', 'Rachel Zane', 'APP004', 'rachel@example.com', '4567890123', 'Female', '2005-08-05', 'Law', '2023-11-04', 'Paid', 'Approved'),
('e3b1c672-8f96-419b-bf72-8e1216afb725', 'assets/images/user/user5.jpg', 'Harvey Specter', 'APP005', 'harvey@example.com', '5678901234', 'Male', '2005-09-12', 'Economics', '2023-11-05', 'Paid', 'Under Review'),
('8d51ca21-bf96-41ab-bc72-8c11e7af1826', 'assets/images/user/user6.jpg', 'Donna Paulsen', 'APP006', 'donna@example.com', '6789012345', 'Female', '2005-10-25', 'Management', '2023-11-06', 'Paid', 'Approved'),
('f05a9cde-bcda-411a-8cbe-e75294bc1827', 'assets/images/user/user7.jpg', 'Louis Litt', 'APP007', 'louis@example.com', '7890123456', 'Male', '2005-11-30', 'Finance', '2023-11-07', 'Unpaid', 'Rejected'),
('5cfa7bcd-e254-47f3-8efd-c78216afde28', 'assets/images/user/user8.jpg', 'Jessica Pearson', 'APP008', 'jessica@example.com', '8901234567', 'Female', '2005-12-15', 'Political Science', '2023-11-08', 'Paid', 'Approved'),
('acda6f23-cfd0-4bf3-ae7d-e7f016afd229', 'assets/images/user/user9.jpg', 'Oliver Queen', 'APP009', 'oliver@example.com', '9012345678', 'Male', '2006-01-20', 'Mechanical Eng', '2023-11-09', 'Paid', 'Pending'),
('e3cbfd72-adcf-41ab-ae7d-d1296bfd3130', 'assets/images/user/user10.jpg', 'Barry Allen', 'APP010', 'barry@example.com', '0123456789', 'Male', '2006-02-14', 'Physics', '2023-11-10', 'Paid', 'Approved')
ON CONFLICT DO NOTHING;
SET session_replication_role = 'origin';
