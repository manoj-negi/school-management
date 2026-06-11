--
-- PostgreSQL database dump
--

\restrict TvfmJRbBGaq2vhBD7zvgW0HnWsUVruEKLNS4AQbv8aTZi51Dhwc7RXeaNVFE2HY

-- Dumped from database version 14.20 (Ubuntu 14.20-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.20 (Ubuntu 14.20-0ubuntu0.22.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: academic_years; Type: TABLE DATA; Schema: public; Owner: negi
--

INSERT INTO public.academic_years VALUES (1, 'Fall 2024', '2024-09-01 05:30:00+05:30', '2024-12-20 05:30:00+05:30', true);


--
-- Data for Name: departments; Type: TABLE DATA; Schema: public; Owner: negi
--

INSERT INTO public.departments VALUES (1, 'Mechanical', 'MECHAN', 'Mechanical Department');
INSERT INTO public.departments VALUES (2, 'Civil', 'CIVIL', 'Civil Department');
INSERT INTO public.departments VALUES (3, 'Science', 'SCIENC', 'Science Department');
INSERT INTO public.departments VALUES (4, 'Mathematics', 'MATHEM', 'Mathematics Department');
INSERT INTO public.departments VALUES (5, 'Computer', 'COMPUT', 'Computer Department');
INSERT INTO public.departments VALUES (6, 'Automobile', 'AUTOMO', 'Automobile Department');
INSERT INTO public.departments VALUES (7, 'Management', 'MANAGE', 'Management Department');


--
-- Data for Name: classes; Type: TABLE DATA; Schema: public; Owner: negi
--

INSERT INTO public.classes VALUES (1, 'Grade 10', 30, 1, NULL);
INSERT INTO public.classes VALUES (2, 'Grade 11', 28, 1, NULL);
INSERT INTO public.classes VALUES (3, 'Grade 12', 25, 1, NULL);
INSERT INTO public.classes VALUES (4, 'Grade 10-A', 32, 1, NULL);
INSERT INTO public.classes VALUES (5, 'Grade 11-A', 30, 1, NULL);
INSERT INTO public.classes VALUES (6, 'Grade 12-A', 20, 1, NULL);
INSERT INTO public.classes VALUES (7, 'Grade 10-B', 30, 1, NULL);
INSERT INTO public.classes VALUES (8, 'Grade 11-B', 26, 1, NULL);
INSERT INTO public.classes VALUES (9, 'Grade 12-B', 22, 1, NULL);
INSERT INTO public.classes VALUES (10, 'Grade 10-C', 32, 1, NULL);
INSERT INTO public.classes VALUES (11, 'Grade 11-C', 27, 1, NULL);
INSERT INTO public.classes VALUES (12, 'Grade 12-C', 30, 1, NULL);
INSERT INTO public.classes VALUES (13, 'Grade 10-D', 29, 1, NULL);
INSERT INTO public.classes VALUES (14, 'Grade 11-D', 28, 1, NULL);
INSERT INTO public.classes VALUES (15, 'Grade 12-D', 24, 1, NULL);
INSERT INTO public.classes VALUES (16, 'Grade 10-E', 33, 1, NULL);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: negi
--

INSERT INTO public.users VALUES ('1b9b79a9-cf07-491c-8c97-fe58a716db7e', 'jay_soni_4', 'teacher4_test@email.com', '$2a$10$cbUEjIsM6.fRH1WaRtTzzOe3i6UuwrzWhntpMbZ8UC9ORJsIz558a', 'teacher', 'assets/images/user/user4.jpg', true, '2026-06-11 12:19:35.64303+05:30', '2026-06-11 12:19:35.64303+05:30');
INSERT INTO public.users VALUES ('391bbec8-0b52-425c-9337-c429477729d1', 'smita_parikh_5', 'teacher5_test@email.com', '$2a$10$cbUEjIsM6.fRH1WaRtTzzOe3i6UuwrzWhntpMbZ8UC9ORJsIz558a', 'teacher', 'assets/images/user/user5.jpg', true, '2026-06-11 12:19:35.648883+05:30', '2026-06-11 12:19:35.648883+05:30');
INSERT INTO public.users VALUES ('8306b79e-3aed-4a55-b516-3e4dcfca5da7', 'pankaj_sinha_6', 'teacher6_test@email.com', '$2a$10$cbUEjIsM6.fRH1WaRtTzzOe3i6UuwrzWhntpMbZ8UC9ORJsIz558a', 'teacher', 'assets/images/user/user6.jpg', true, '2026-06-11 12:19:35.655254+05:30', '2026-06-11 12:19:35.655254+05:30');
INSERT INTO public.users VALUES ('5fc41801-d39e-4a42-b23e-3a7f776293fd', 'pankaj_sinha_7', 'teacher7_test@email.com', '$2a$10$cbUEjIsM6.fRH1WaRtTzzOe3i6UuwrzWhntpMbZ8UC9ORJsIz558a', 'teacher', 'assets/images/user/user7.jpg', true, '2026-06-11 12:19:35.660522+05:30', '2026-06-11 12:19:35.660522+05:30');
INSERT INTO public.users VALUES ('dd5d1d99-c958-4697-9197-298a70e29536', 'jay_soni_8', 'teacher8_test@email.com', '$2a$10$cbUEjIsM6.fRH1WaRtTzzOe3i6UuwrzWhntpMbZ8UC9ORJsIz558a', 'teacher', 'assets/images/user/user8.jpg', true, '2026-06-11 12:19:35.667041+05:30', '2026-06-11 12:19:35.667041+05:30');
INSERT INTO public.users VALUES ('830102fe-bb1d-46fd-96ef-b0937d1c032f', 'smita_parikh_9', 'teacher9_test@email.com', '$2a$10$cbUEjIsM6.fRH1WaRtTzzOe3i6UuwrzWhntpMbZ8UC9ORJsIz558a', 'teacher', 'assets/images/user/user9.jpg', true, '2026-06-11 12:19:35.672133+05:30', '2026-06-11 12:19:35.672133+05:30');
INSERT INTO public.users VALUES ('ba59b08a-1343-44bb-9922-ef23a36d562c', 'pooja_patel_10', 'teacher10_test@email.com', '$2a$10$cbUEjIsM6.fRH1WaRtTzzOe3i6UuwrzWhntpMbZ8UC9ORJsIz558a', 'teacher', 'assets/images/user/user10.jpg', true, '2026-06-11 12:19:35.677083+05:30', '2026-06-11 12:19:35.677083+05:30');
INSERT INTO public.users VALUES ('91fd5fd9-11f5-4e48-8fff-3495866bf1a8', 'jay_soni_11', 'teacher11_test@email.com', '$2a$10$cbUEjIsM6.fRH1WaRtTzzOe3i6UuwrzWhntpMbZ8UC9ORJsIz558a', 'teacher', 'assets/images/user/user1.jpg', true, '2026-06-11 12:19:35.683135+05:30', '2026-06-11 12:19:35.683136+05:30');
INSERT INTO public.users VALUES ('8773f19a-d484-449d-8f61-32af5331009d', 'pooja_patel_12', 'teacher12_test@email.com', '$2a$10$cbUEjIsM6.fRH1WaRtTzzOe3i6UuwrzWhntpMbZ8UC9ORJsIz558a', 'teacher', 'assets/images/user/user1.jpg', true, '2026-06-11 12:19:35.689372+05:30', '2026-06-11 12:19:35.689372+05:30');
INSERT INTO public.users VALUES ('5e0448e1-80e2-4354-b7e7-9e0cf57eaceb', 'sarah_smith_13', 'teacher13_test@email.com', '$2a$10$cbUEjIsM6.fRH1WaRtTzzOe3i6UuwrzWhntpMbZ8UC9ORJsIz558a', 'teacher', 'assets/images/user/user2.jpg', true, '2026-06-11 12:19:35.694558+05:30', '2026-06-11 12:19:35.694558+05:30');
INSERT INTO public.users VALUES ('6c6b1866-5352-4374-8549-73ac0f45a591', 'jay_soni_15', 'teacher15_test@email.com', '$2a$10$cbUEjIsM6.fRH1WaRtTzzOe3i6UuwrzWhntpMbZ8UC9ORJsIz558a', 'teacher', 'assets/images/user/user4.jpg', true, '2026-06-11 12:19:35.706328+05:30', '2026-06-11 12:19:35.706328+05:30');
INSERT INTO public.users VALUES ('ce5623c3-d931-48b2-b199-26dbd0b28158', 'pankaj_sinha_16', 'teacher16_test@email.com', '$2a$10$cbUEjIsM6.fRH1WaRtTzzOe3i6UuwrzWhntpMbZ8UC9ORJsIz558a', 'teacher', 'assets/images/user/user5.jpg', true, '2026-06-11 12:19:35.713392+05:30', '2026-06-11 12:19:35.713392+05:30');
INSERT INTO public.users VALUES ('5d872a91-8bf5-4a32-a51d-ea43c708f777', 'john_deo_stu_1', 'student1_test@email.com', '$2a$10$4BwivXrsxOnUnYAdOVX2p.LvCg.4R9bBtbFGJbjAfz1ge5xJmXrQy', 'student', 'assets/images/user/user1.jpg', true, '2026-06-11 12:19:35.784372+05:30', '2026-06-11 12:19:35.784372+05:30');
INSERT INTO public.users VALUES ('c69246a5-bff7-46a4-abfe-ef8d0ce6d9d3', 'sarah_smith_stu_2', 'student2_test@email.com', '$2a$10$4BwivXrsxOnUnYAdOVX2p.LvCg.4R9bBtbFGJbjAfz1ge5xJmXrQy', 'student', 'assets/images/user/user2.jpg', true, '2026-06-11 12:19:35.789982+05:30', '2026-06-11 12:19:35.789983+05:30');
INSERT INTO public.users VALUES ('18bf734b-a9cd-49f1-a8c1-6843a28d5e9e', 'john_deo_stu_3', 'student3_test@email.com', '$2a$10$4BwivXrsxOnUnYAdOVX2p.LvCg.4R9bBtbFGJbjAfz1ge5xJmXrQy', 'student', 'assets/images/user/user3.jpg', true, '2026-06-11 12:19:35.795483+05:30', '2026-06-11 12:19:35.795483+05:30');
INSERT INTO public.users VALUES ('5c08b527-46a9-4037-9fb9-b73cc3569fc2', 'jay_soni_stu_4', 'student4_test@email.com', '$2a$10$4BwivXrsxOnUnYAdOVX2p.LvCg.4R9bBtbFGJbjAfz1ge5xJmXrQy', 'student', 'assets/images/user/user4.jpg', true, '2026-06-11 12:19:35.800768+05:30', '2026-06-11 12:19:35.800769+05:30');
INSERT INTO public.users VALUES ('f88a64cc-4583-455f-a70b-cf10beb8fd7b', 'smita_parikh_stu_5', 'student5_test@email.com', '$2a$10$4BwivXrsxOnUnYAdOVX2p.LvCg.4R9bBtbFGJbjAfz1ge5xJmXrQy', 'student', 'assets/images/user/user5.jpg', true, '2026-06-11 12:19:35.808387+05:30', '2026-06-11 12:19:35.808388+05:30');
INSERT INTO public.users VALUES ('06026e28-8201-4796-81fd-fc928c9f5f3e', 'pankaj_sinha_stu_6', 'student6_test@email.com', '$2a$10$4BwivXrsxOnUnYAdOVX2p.LvCg.4R9bBtbFGJbjAfz1ge5xJmXrQy', 'student', 'assets/images/user/user6.jpg', true, '2026-06-11 12:19:35.816157+05:30', '2026-06-11 12:19:35.816158+05:30');
INSERT INTO public.users VALUES ('0ad8ebee-9ba6-4875-9e38-d60bdbe6ea62', 'pankaj_sinha_stu_7', 'student7_test@email.com', '$2a$10$4BwivXrsxOnUnYAdOVX2p.LvCg.4R9bBtbFGJbjAfz1ge5xJmXrQy', 'student', 'assets/images/user/user7.jpg', true, '2026-06-11 12:19:35.823687+05:30', '2026-06-11 12:19:35.823688+05:30');
INSERT INTO public.users VALUES ('3b887faa-b756-4c20-94f9-c3f79fe9db3a', 'jay_soni_stu_8', 'student8_test@email.com', '$2a$10$4BwivXrsxOnUnYAdOVX2p.LvCg.4R9bBtbFGJbjAfz1ge5xJmXrQy', 'student', 'assets/images/user/user8.jpg', true, '2026-06-11 12:19:35.831416+05:30', '2026-06-11 12:19:35.831417+05:30');
INSERT INTO public.users VALUES ('0d8fa89c-7848-41b7-921b-470e8bc45ac1', 'smita_parikh_stu_9', 'student9_test@email.com', '$2a$10$4BwivXrsxOnUnYAdOVX2p.LvCg.4R9bBtbFGJbjAfz1ge5xJmXrQy', 'student', 'assets/images/user/user9.jpg', true, '2026-06-11 12:19:35.838626+05:30', '2026-06-11 12:19:35.838627+05:30');
INSERT INTO public.users VALUES ('2bd9dece-25d7-4d12-bc7b-aa91f584e5e7', 'pooja_patel_stu_10', 'student10_test@email.com', '$2a$10$4BwivXrsxOnUnYAdOVX2p.LvCg.4R9bBtbFGJbjAfz1ge5xJmXrQy', 'student', 'assets/images/user/user10.jpg', true, '2026-06-11 12:19:35.846469+05:30', '2026-06-11 12:19:35.84647+05:30');
INSERT INTO public.users VALUES ('77ab5072-0d8a-4888-868d-043ebbcf74d8', 'jay_soni_stu_11', 'student11_test@email.com', '$2a$10$4BwivXrsxOnUnYAdOVX2p.LvCg.4R9bBtbFGJbjAfz1ge5xJmXrQy', 'student', 'assets/images/user/user1.jpg', true, '2026-06-11 12:19:35.852788+05:30', '2026-06-11 12:19:35.852788+05:30');
INSERT INTO public.users VALUES ('86f49b67-675e-490b-b87c-f717fc6e5a03', 'pooja_patel_stu_12', 'student12_test@email.com', '$2a$10$4BwivXrsxOnUnYAdOVX2p.LvCg.4R9bBtbFGJbjAfz1ge5xJmXrQy', 'student', 'assets/images/user/user1.jpg', true, '2026-06-11 12:19:35.857977+05:30', '2026-06-11 12:19:35.857977+05:30');
INSERT INTO public.users VALUES ('0d3abb3a-5cda-4687-9a6b-0b893e8936d3', 'sarah_smith_stu_13', 'student13_test@email.com', '$2a$10$4BwivXrsxOnUnYAdOVX2p.LvCg.4R9bBtbFGJbjAfz1ge5xJmXrQy', 'student', 'assets/images/user/user2.jpg', true, '2026-06-11 12:19:35.863146+05:30', '2026-06-11 12:19:35.863147+05:30');
INSERT INTO public.users VALUES ('98012dd4-5ab6-4b9f-83dc-0e5c24476bea', 'smita_parikh_stu_14', 'student14_test@email.com', '$2a$10$4BwivXrsxOnUnYAdOVX2p.LvCg.4R9bBtbFGJbjAfz1ge5xJmXrQy', 'student', 'assets/images/user/user3.jpg', true, '2026-06-11 12:19:35.868034+05:30', '2026-06-11 12:19:35.868035+05:30');
INSERT INTO public.users VALUES ('0cff089b-6bbe-42ab-a414-8c86934005f3', 'jay_soni_stu_15', 'student15_test@email.com', '$2a$10$4BwivXrsxOnUnYAdOVX2p.LvCg.4R9bBtbFGJbjAfz1ge5xJmXrQy', 'student', 'assets/images/user/user4.jpg', true, '2026-06-11 12:19:35.873284+05:30', '2026-06-11 12:19:35.873284+05:30');
INSERT INTO public.users VALUES ('18ecb1d0-ba65-495b-a92b-a495551fc1e3', 'pankaj_sinha_stu_16', 'student16_test@email.com', '$2a$10$4BwivXrsxOnUnYAdOVX2p.LvCg.4R9bBtbFGJbjAfz1ge5xJmXrQy', 'student', 'assets/images/user/user5.jpg', true, '2026-06-11 12:19:35.878169+05:30', '2026-06-11 12:19:35.878169+05:30');
INSERT INTO public.users VALUES ('2966c84b-91f8-414f-ac34-ac13a1c0ca07', 'bertie_jones_emp_1', 'staff1_test@email.com', '$2a$10$VLTkysLCnpFXkrIngPa9t.j/e.vmRDh4331dMKJdueSicab7hy7a.', 'employee', 'assets/images/user/user1.jpg', true, '2026-06-11 12:19:35.9488+05:30', '2026-06-11 12:19:35.9488+05:30');
INSERT INTO public.users VALUES ('30b46a37-9335-40c7-911c-96a8caa14d85', 'sarah_smith_emp_2', 'staff2_test@email.com', '$2a$10$VLTkysLCnpFXkrIngPa9t.j/e.vmRDh4331dMKJdueSicab7hy7a.', 'employee', 'assets/images/user/user2.jpg', true, '2026-06-11 12:19:35.954129+05:30', '2026-06-11 12:19:35.954129+05:30');
INSERT INTO public.users VALUES ('3d3808cb-1e0e-4ded-8f16-99b0081ccece', 'bethaney_spence_emp_3', 'staff3_test@email.com', '$2a$10$VLTkysLCnpFXkrIngPa9t.j/e.vmRDh4331dMKJdueSicab7hy7a.', 'employee', 'assets/images/user/user3.jpg', true, '2026-06-11 12:19:35.95969+05:30', '2026-06-11 12:19:35.959691+05:30');
INSERT INTO public.users VALUES ('0acc157d-f118-4845-9952-062cce6f2eb5', 'jay_soni_emp_4', 'staff4_test@email.com', '$2a$10$VLTkysLCnpFXkrIngPa9t.j/e.vmRDh4331dMKJdueSicab7hy7a.', 'employee', 'assets/images/user/user4.jpg', true, '2026-06-11 12:19:35.964817+05:30', '2026-06-11 12:19:35.964817+05:30');
INSERT INTO public.users VALUES ('76ff2fba-f380-40e5-9dad-85a6ef969b5a', 'pam_abbott_emp_5', 'staff5_test@email.com', '$2a$10$VLTkysLCnpFXkrIngPa9t.j/e.vmRDh4331dMKJdueSicab7hy7a.', 'employee', 'assets/images/user/user5.jpg', true, '2026-06-11 12:19:35.96985+05:30', '2026-06-11 12:19:35.96985+05:30');
INSERT INTO public.users VALUES ('2fd62473-3953-4f65-bf60-ce34b1369ac5', 'wesley_casey_emp_6', 'staff6_test@email.com', '$2a$10$VLTkysLCnpFXkrIngPa9t.j/e.vmRDh4331dMKJdueSicab7hy7a.', 'employee', 'assets/images/user/user6.jpg', true, '2026-06-11 12:19:35.975001+05:30', '2026-06-11 12:19:35.975001+05:30');
INSERT INTO public.users VALUES ('256e76a0-0c66-4c20-8125-45c663cf97d8', 'ivan_bell_emp_7', 'staff7_test@email.com', '$2a$10$VLTkysLCnpFXkrIngPa9t.j/e.vmRDh4331dMKJdueSicab7hy7a.', 'employee', 'assets/images/user/user7.jpg', true, '2026-06-11 12:19:35.979831+05:30', '2026-06-11 12:19:35.979831+05:30');
INSERT INTO public.users VALUES ('6a2e32e5-8698-495a-93da-ea016c94384d', 'jay_soni_emp_8', 'staff8_test@email.com', '$2a$10$VLTkysLCnpFXkrIngPa9t.j/e.vmRDh4331dMKJdueSicab7hy7a.', 'employee', 'assets/images/user/user8.jpg', true, '2026-06-11 12:19:35.984452+05:30', '2026-06-11 12:19:35.984452+05:30');
INSERT INTO public.users VALUES ('e867f6af-bc13-4358-93b5-a7669ec0a854', 'sarah_smith_2', 'teacher2_test@email.com', '$2a$10$cbUEjIsM6.fRH1WaRtTzzOe3i6UuwrzWhntpMbZ8UC9ORJsIz558a', 'teacher', 'assets/images/user/user2.jpg', true, '2026-06-11 12:19:35.631949+05:30', '2026-06-11 12:19:35.63195+05:30');
INSERT INTO public.users VALUES ('6c2ae23c-ce81-48fd-ab33-617c4004e639', 'john_deo_3', 'teacher3_test@email.com', '$2a$10$cbUEjIsM6.fRH1WaRtTzzOe3i6UuwrzWhntpMbZ8UC9ORJsIz558a', 'teacher', 'assets/images/user/user3.jpg', true, '2026-06-11 12:19:35.638125+05:30', '2026-06-11 12:19:35.638125+05:30');
INSERT INTO public.users VALUES ('cf9ad527-3a8a-41c2-a8ff-6d5c630cef43', 'jay_soni_emp_15', 'staff15_test@email.com', '$2a$10$VLTkysLCnpFXkrIngPa9t.j/e.vmRDh4331dMKJdueSicab7hy7a.', 'employee', 'assets/images/user/user4.jpg', true, '2026-06-11 12:19:36.01781+05:30', '2026-06-11 12:19:36.01781+05:30');
INSERT INTO public.users VALUES ('6199de6a-418d-4774-b9c0-4074c03491d4', 'alexandra_clarke_emp_16', 'staff16_test@email.com', '$2a$10$VLTkysLCnpFXkrIngPa9t.j/e.vmRDh4331dMKJdueSicab7hy7a.', 'employee', 'assets/images/user/user5.jpg', true, '2026-06-11 12:19:36.026206+05:30', '2026-06-11 12:19:36.026206+05:30');
INSERT INTO public.users VALUES ('491d026a-480f-4b30-996c-43417ead5113', 'john_deo_1', 'teacher1_test@email.com', '$2a$10$cbUEjIsM6.fRH1WaRtTzzOe3i6UuwrzWhntpMbZ8UC9ORJsIz558a', 'teacher', 'assets/images/user/user1.jpg', true, '2026-06-11 12:19:35.621611+05:30', '2026-06-11 12:19:35.621611+05:30');
INSERT INTO public.users VALUES ('7b41b2e4-b61a-4fd1-a645-60b6bf8530f6', 'smita_parikh_14', 'teacher14_test@email.com', '$2a$10$cbUEjIsM6.fRH1WaRtTzzOe3i6UuwrzWhntpMbZ8UC9ORJsIz558a', 'teacher', 'assets/images/user/user3.jpg', true, '2026-06-11 12:19:35.700367+05:30', '2026-06-11 12:19:35.700367+05:30');
INSERT INTO public.users VALUES ('3865d015-911c-496c-b06f-c97daeff9ddf', 'robin_graves_emp_9', 'staff9_test@email.com', '$2a$10$VLTkysLCnpFXkrIngPa9t.j/e.vmRDh4331dMKJdueSicab7hy7a.', 'employee', 'assets/images/user/user9.jpg', true, '2026-06-11 12:19:35.989386+05:30', '2026-06-11 12:19:35.989386+05:30');
INSERT INTO public.users VALUES ('a2c20950-47b2-4035-af36-23686e6a2aac', 'elsie_cruz_emp_10', 'staff10_test@email.com', '$2a$10$VLTkysLCnpFXkrIngPa9t.j/e.vmRDh4331dMKJdueSicab7hy7a.', 'employee', 'assets/images/user/user10.jpg', true, '2026-06-11 12:19:35.994293+05:30', '2026-06-11 12:19:35.994293+05:30');
INSERT INTO public.users VALUES ('c40f2fb0-c6bc-4ea6-b614-9b8092448b29', 'jay_soni_emp_11', 'staff11_test@email.com', '$2a$10$VLTkysLCnpFXkrIngPa9t.j/e.vmRDh4331dMKJdueSicab7hy7a.', 'employee', 'assets/images/user/user1.jpg', true, '2026-06-11 12:19:35.998968+05:30', '2026-06-11 12:19:35.998969+05:30');
INSERT INTO public.users VALUES ('ffa1a0a3-4d2a-4bfd-8406-7ef29bccc5d9', 'justin_copeland_emp_12', 'staff12_test@email.com', '$2a$10$VLTkysLCnpFXkrIngPa9t.j/e.vmRDh4331dMKJdueSicab7hy7a.', 'employee', 'assets/images/user/user1.jpg', true, '2026-06-11 12:19:36.003952+05:30', '2026-06-11 12:19:36.003952+05:30');
INSERT INTO public.users VALUES ('f1f05f53-98b9-44ad-a4f2-3abd44aada8e', 'sarah_smith_emp_13', 'staff13_test@email.com', '$2a$10$VLTkysLCnpFXkrIngPa9t.j/e.vmRDh4331dMKJdueSicab7hy7a.', 'employee', 'assets/images/user/user2.jpg', true, '2026-06-11 12:19:36.008739+05:30', '2026-06-11 12:19:36.00874+05:30');
INSERT INTO public.users VALUES ('1f27b3a7-50f2-4ead-8c3d-fe68c47eb99d', 'kendra_king_emp_14', 'staff14_test@email.com', '$2a$10$VLTkysLCnpFXkrIngPa9t.j/e.vmRDh4331dMKJdueSicab7hy7a.', 'employee', 'assets/images/user/user3.jpg', true, '2026-06-11 12:19:36.01338+05:30', '2026-06-11 12:19:36.01338+05:30');


--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: negi
--

INSERT INTO public.employees VALUES ('198fa1a4-c1e4-46b0-8429-856aa0be2107', 'Jay', 'Soni', 'male', '1993-11-12 05:30:00+05:30', '1234567890', '11, Shyam appt. Rajkot', 'Clerk', '2018-02-25 05:30:00+05:30', 30000, 'assets/images/user/user4.jpg', true, 'cf9ad527-3a8a-41c2-a8ff-6d5c630cef43', NULL);
INSERT INTO public.employees VALUES ('71c6cc05-9d69-4949-95f6-10be4d5db2b2', 'Alexandra', 'Clarke', 'female', '1988-05-30 05:30:00+05:30', '1234567890', '11, Shyam appt. Rajkot', 'Purchase Officer', '2018-02-25 05:30:00+05:30', 40000, 'assets/images/user/user5.jpg', true, '6199de6a-418d-4774-b9c0-4074c03491d4', NULL);
INSERT INTO public.employees VALUES ('6e718a0e-3c18-4e96-aed4-83c46f48bf06', 'Bertie', 'Jones', 'male', '1990-06-15 05:30:00+05:30', '1234567890', '11, Shyam appt. Rajkot', 'General maintenance', '2018-02-25 05:30:00+05:30', 25000, 'assets/images/user/user1.jpg', true, '2966c84b-91f8-414f-ac34-ac13a1c0ca07', NULL);
INSERT INTO public.employees VALUES ('b58049e3-14d0-4358-8065-ec6725573660', 'Sarah', 'Smith', 'female', '1995-04-10 05:30:00+05:30', '1234567890', '22, tilak appt. surat', 'Clerk', '2018-02-12 05:30:00+05:30', 30000, 'assets/images/user/user2.jpg', true, '30b46a37-9335-40c7-911c-96a8caa14d85', NULL);
INSERT INTO public.employees VALUES ('595aed02-d34a-40e8-b24c-8a2841842aa6', 'Bethaney', 'Spence', 'female', '1992-08-20 05:30:00+05:30', '1234567890', '201, Shyamal, Puna', 'Librarian', '2018-02-25 05:30:00+05:30', 35000, 'assets/images/user/user3.jpg', true, '3d3808cb-1e0e-4ded-8f16-99b0081ccece', NULL);
INSERT INTO public.employees VALUES ('ede30417-ea85-41e6-84ff-31443828903b', 'Jay', 'Soni', 'male', '1993-11-12 05:30:00+05:30', '1234567890', '11, Shyam appt. Rajkot', 'Clerk', '2018-02-25 05:30:00+05:30', 30000, 'assets/images/user/user4.jpg', true, '0acc157d-f118-4845-9952-062cce6f2eb5', NULL);
INSERT INTO public.employees VALUES ('d01d1c13-5dfe-4d73-a585-e121372c2d61', 'Pam', 'Abbott', 'female', '1988-05-30 05:30:00+05:30', '1234567890', '11, Shyam appt. Rajkot', 'Purchase Officer', '2018-02-25 05:30:00+05:30', 40000, 'assets/images/user/user5.jpg', true, '76ff2fba-f380-40e5-9dad-85a6ef969b5a', NULL);
INSERT INTO public.employees VALUES ('bb38cad3-b5d9-4587-b471-ee1a71926df5', 'Wesley', 'Casey', 'male', '1994-03-15 05:30:00+05:30', '1234567890', '11, Shyam appt. Rajkot', 'Receptionist', '2018-02-25 05:30:00+05:30', 30000, 'assets/images/user/user6.jpg', true, '2fd62473-3953-4f65-bf60-ce34b1369ac5', NULL);
INSERT INTO public.employees VALUES ('4b65abf8-d87e-4be3-ab8d-7f6b37a9eb88', 'Ivan', 'Bell', 'male', '1996-09-25 05:30:00+05:30', '1234567890', '11, Shyam appt. Rajkot', 'Clerk', '2018-02-25 05:30:00+05:30', 30000, 'assets/images/user/user7.jpg', true, '256e76a0-0c66-4c20-8125-45c663cf97d8', NULL);
INSERT INTO public.employees VALUES ('0129e922-d2ba-4438-9ba9-662591c102af', 'Jay', 'Soni', 'male', '1992-01-05 05:30:00+05:30', '1234567890', '11, Shyam appt. Rajkot', 'Teacher', '2018-02-25 05:30:00+05:30', 50000, 'assets/images/user/user8.jpg', true, '6a2e32e5-8698-495a-93da-ea016c94384d', NULL);
INSERT INTO public.employees VALUES ('654be159-7301-4ba8-9670-e192f454a7e7', 'Robin', 'Graves', 'male', '1989-07-15 05:30:00+05:30', '1234567890', '11, Shyam appt. Rajkot', 'Driver', '2018-02-25 05:30:00+05:30', 30000, 'assets/images/user/user9.jpg', true, '3865d015-911c-496c-b06f-c97daeff9ddf', NULL);
INSERT INTO public.employees VALUES ('899ed304-3df6-4a31-88ae-15bf9a816013', 'Elsie', 'Cruz', 'female', '1990-10-10 05:30:00+05:30', '1234567890', '11, Shyam appt. Rajkot', 'Clerk', '2018-02-25 05:30:00+05:30', 30000, 'assets/images/user/user10.jpg', true, 'a2c20950-47b2-4035-af36-23686e6a2aac', NULL);
INSERT INTO public.employees VALUES ('321d70f6-8e16-45fd-95c7-6c1632b41038', 'Jay', 'Soni', 'male', '1994-02-20 05:30:00+05:30', '1234567890', '11, Shyam appt. Rajkot', 'Receptionist', '2018-02-25 05:30:00+05:30', 30000, 'assets/images/user/user1.jpg', true, 'c40f2fb0-c6bc-4ea6-b614-9b8092448b29', NULL);
INSERT INTO public.employees VALUES ('d9c363c1-40ac-4c52-9cff-3c5f2c99b2f2', 'Justin', 'Copeland', 'male', '1991-05-05 05:30:00+05:30', '1234567890', '11, Shyam appt. Rajkot', 'Peon', '2018-02-25 05:30:00+05:30', 25000, 'assets/images/user/user1.jpg', true, 'ffa1a0a3-4d2a-4bfd-8406-7ef29bccc5d9', NULL);
INSERT INTO public.employees VALUES ('18c66db1-18d3-48ea-ace7-4401e0abcf19', 'Sarah', 'Smith', 'female', '1995-04-10 05:30:00+05:30', '1234567890', '22, tilak appt. surat', 'Clerk', '2018-02-25 05:30:00+05:30', 30000, 'assets/images/user/user2.jpg', true, 'f1f05f53-98b9-44ad-a4f2-3abd44aada8e', NULL);
INSERT INTO public.employees VALUES ('73ecece5-2c17-4819-809a-5370991363b7', 'Kendra', 'King', 'female', '1992-08-20 05:30:00+05:30', '1234567890', '201, Shyamal, Puna', 'Librarian', '2018-02-25 05:30:00+05:30', 35000, 'assets/images/user/user3.jpg', true, '1f27b3a7-50f2-4ead-8c3d-fe68c47eb99d', NULL);


--
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: negi
--

INSERT INTO public.events VALUES (1, 'New Year''s Day', 'holiday', 'A celebration marking the start of the new year.', '2019-02-22 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (2, 'Memorial Day', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-12 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (3, 'Christmas Day', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-12-20 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (4, 'Annual Function', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-01-26 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (5, 'New Year''s Day', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-01 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (6, 'Earth Day', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-23 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (7, 'Army Day', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-20 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (8, 'Freedom Day', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-17 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (9, 'Annual Function', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-14 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (10, 'Diwali', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-23 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (11, 'Holi', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-12 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (12, 'Chinese New Year', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-08 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (13, 'Rosa Parks Day', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-10 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (14, 'Super Tuesday', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-15 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (15, 'Makar Sankranti', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-11 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (16, 'Rama Navami', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-12 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (17, 'New Year', 'holiday', 'This festival is celebrate for.', '2021-12-31 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (18, 'World Aids Day', 'holiday', 'This festival is celebrate for.', '2021-12-10 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (19, 'World Milk Day', 'holiday', 'This festival is celebrate for.', '2021-06-01 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (20, 'Diwali', 'holiday', 'This festival is celebrate for.', '2021-11-04 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (21, 'Global Family Day', 'holiday', 'This festival is celebrate for.', '2021-01-01 19:52:18+05:30', true, 'Cancelled');
INSERT INTO public.events VALUES (22, 'Earth Hour', 'holiday', 'This festival is celebrate for.', '2021-03-27 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (23, 'World Book Day', 'holiday', 'This festival is celebrate for.', '2021-04-23 19:52:18+05:30', true, 'Cancelled');
INSERT INTO public.events VALUES (24, 'International Yoga Day', 'holiday', 'This festival is celebrate for.', '2021-06-21 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (25, 'Eid', 'holiday', 'This festival is celebrate for.', '2021-04-11 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (26, 'Holi', 'holiday', 'This festival is celebrate for.', '2021-07-25 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (27, 'Christmas', 'holiday', 'This festival is celebrate for.', '2021-12-25 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (28, 'Dussehra', 'holiday', 'This festival is celebrate for.', '2021-07-18 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (29, 'April Fools Day', 'holiday', 'This festival is celebrate for.', '2021-04-02 03:48:00+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (30, 'Good Friday', 'holiday', 'This festival is celebrate for.', '2021-12-31 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (31, 'Easter', 'holiday', 'This festival is celebrate for.', '2021-12-31 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (32, 'Halloween', 'holiday', 'This festival is celebrate for.', '2021-10-31 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (33, 'New Year''s Day', 'holiday', 'A celebration marking the start of the new year.', '2019-02-22 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (34, 'Memorial Day', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-12 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (35, 'Christmas Day', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-12-20 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (36, 'Annual Function', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-01-26 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (37, 'New Year''s Day', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-01 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (38, 'Earth Day', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-23 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (39, 'Army Day', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-20 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (40, 'Freedom Day', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-17 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (41, 'Annual Function', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-14 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (42, 'Diwali', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-23 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (43, 'Holi', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-12 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (44, 'Chinese New Year', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-08 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (45, 'Rosa Parks Day', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-10 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (46, 'Super Tuesday', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-15 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (47, 'Makar Sankranti', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-11 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (48, 'Rama Navami', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-12 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (49, 'New Year', 'holiday', 'This festival is celebrate for.', '2021-12-31 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (50, 'World Aids Day', 'holiday', 'This festival is celebrate for.', '2021-12-10 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (51, 'World Milk Day', 'holiday', 'This festival is celebrate for.', '2021-06-01 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (52, 'Diwali', 'holiday', 'This festival is celebrate for.', '2021-11-04 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (53, 'Global Family Day', 'holiday', 'This festival is celebrate for.', '2021-01-01 19:52:18+05:30', true, 'Cancelled');
INSERT INTO public.events VALUES (54, 'Earth Hour', 'holiday', 'This festival is celebrate for.', '2021-03-27 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (55, 'World Book Day', 'holiday', 'This festival is celebrate for.', '2021-04-23 19:52:18+05:30', true, 'Cancelled');
INSERT INTO public.events VALUES (56, 'International Yoga Day', 'holiday', 'This festival is celebrate for.', '2021-06-21 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (57, 'Eid', 'holiday', 'This festival is celebrate for.', '2021-04-11 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (58, 'Holi', 'holiday', 'This festival is celebrate for.', '2021-07-25 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (59, 'Christmas', 'holiday', 'This festival is celebrate for.', '2021-12-25 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (60, 'Dussehra', 'holiday', 'This festival is celebrate for.', '2021-07-18 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (61, 'April Fools Day', 'holiday', 'This festival is celebrate for.', '2021-04-02 03:48:00+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (62, 'Good Friday', 'holiday', 'This festival is celebrate for.', '2021-12-31 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (63, 'Easter', 'holiday', 'This festival is celebrate for.', '2021-12-31 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (64, 'Halloween', 'holiday', 'This festival is celebrate for.', '2021-10-31 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (65, 'New Year''s Day', 'holiday', 'A celebration marking the start of the new year.', '2019-02-22 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (66, 'Memorial Day', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-12 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (67, 'Christmas Day', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-12-20 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (68, 'Annual Function', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-01-26 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (69, 'New Year''s Day', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-01 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (70, 'Earth Day', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-23 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (71, 'Army Day', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-20 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (72, 'Freedom Day', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-17 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (73, 'Annual Function', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-14 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (74, 'Diwali', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-23 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (75, 'Holi', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-12 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (76, 'Chinese New Year', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-08 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (77, 'Rosa Parks Day', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-10 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (78, 'Super Tuesday', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-15 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (79, 'Makar Sankranti', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-11 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (80, 'Rama Navami', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-12 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (81, 'New Year', 'holiday', 'This festival is celebrate for.', '2021-12-31 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (82, 'World Aids Day', 'holiday', 'This festival is celebrate for.', '2021-12-10 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (83, 'World Milk Day', 'holiday', 'This festival is celebrate for.', '2021-06-01 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (84, 'Diwali', 'holiday', 'This festival is celebrate for.', '2021-11-04 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (85, 'Global Family Day', 'holiday', 'This festival is celebrate for.', '2021-01-01 19:52:18+05:30', true, 'Cancelled');
INSERT INTO public.events VALUES (86, 'Earth Hour', 'holiday', 'This festival is celebrate for.', '2021-03-27 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (87, 'World Book Day', 'holiday', 'This festival is celebrate for.', '2021-04-23 19:52:18+05:30', true, 'Cancelled');
INSERT INTO public.events VALUES (88, 'International Yoga Day', 'holiday', 'This festival is celebrate for.', '2021-06-21 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (89, 'Eid', 'holiday', 'This festival is celebrate for.', '2021-04-11 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (90, 'Holi', 'holiday', 'This festival is celebrate for.', '2021-07-25 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (91, 'Christmas', 'holiday', 'This festival is celebrate for.', '2021-12-25 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (92, 'Dussehra', 'holiday', 'This festival is celebrate for.', '2021-07-18 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (93, 'April Fools Day', 'holiday', 'This festival is celebrate for.', '2021-04-02 03:48:00+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (94, 'Good Friday', 'holiday', 'This festival is celebrate for.', '2021-12-31 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (95, 'Easter', 'holiday', 'This festival is celebrate for.', '2021-12-31 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (96, 'Halloween', 'holiday', 'This festival is celebrate for.', '2021-10-31 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (97, 'New Year''s Day', 'holiday', 'A celebration marking the start of the new year.', '2019-02-22 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (98, 'Memorial Day', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-12 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (99, 'Christmas Day', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-12-20 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (100, 'Annual Function', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-01-26 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (101, 'New Year''s Day', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-01 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (102, 'Earth Day', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-23 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (103, 'Army Day', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-20 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (104, 'Freedom Day', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-17 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (105, 'Annual Function', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-14 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (106, 'Diwali', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-23 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (107, 'Holi', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-12 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (108, 'Chinese New Year', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-08 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (109, 'Rosa Parks Day', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-10 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (110, 'Super Tuesday', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-15 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (111, 'Makar Sankranti', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-11 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (112, 'Rama Navami', 'holiday', 'Lorem Ipsum is simply dummy text of the printing.', '2019-02-12 19:52:18+05:30', true, 'Active');
INSERT INTO public.events VALUES (113, 'New Year', 'holiday', 'This festival is celebrate for.', '2021-12-31 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (114, 'World Aids Day', 'holiday', 'This festival is celebrate for.', '2021-12-10 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (115, 'World Milk Day', 'holiday', 'This festival is celebrate for.', '2021-06-01 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (116, 'Diwali', 'holiday', 'This festival is celebrate for.', '2021-11-04 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (117, 'Global Family Day', 'holiday', 'This festival is celebrate for.', '2021-01-01 19:52:18+05:30', true, 'Cancelled');
INSERT INTO public.events VALUES (118, 'Earth Hour', 'holiday', 'This festival is celebrate for.', '2021-03-27 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (119, 'World Book Day', 'holiday', 'This festival is celebrate for.', '2021-04-23 19:52:18+05:30', true, 'Cancelled');
INSERT INTO public.events VALUES (120, 'International Yoga Day', 'holiday', 'This festival is celebrate for.', '2021-06-21 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (121, 'Eid', 'holiday', 'This festival is celebrate for.', '2021-04-11 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (122, 'Holi', 'holiday', 'This festival is celebrate for.', '2021-07-25 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (123, 'Christmas', 'holiday', 'This festival is celebrate for.', '2021-12-25 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (124, 'Dussehra', 'holiday', 'This festival is celebrate for.', '2021-07-18 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (125, 'April Fools Day', 'holiday', 'This festival is celebrate for.', '2021-04-02 03:48:00+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (126, 'Good Friday', 'holiday', 'This festival is celebrate for.', '2021-12-31 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (127, 'Easter', 'holiday', 'This festival is celebrate for.', '2021-12-31 19:52:18+05:30', true, 'Upcoming');
INSERT INTO public.events VALUES (128, 'Halloween', 'holiday', 'This festival is celebrate for.', '2021-10-31 19:52:18+05:30', true, 'Upcoming');


--
-- Data for Name: subjects; Type: TABLE DATA; Schema: public; Owner: negi
--

INSERT INTO public.subjects VALUES (1, 'Mathematics', 'MATHEMATIC', 'Mathematics subject');
INSERT INTO public.subjects VALUES (2, 'Civil Engineering', 'CIVILENGIN', 'Civil Engineering subject');
INSERT INTO public.subjects VALUES (3, 'Computer Science', 'COMPUTERSC', 'Computer Science subject');
INSERT INTO public.subjects VALUES (4, 'Mechanical Engineering', 'MECHANICAL', 'Mechanical Engineering subject');
INSERT INTO public.subjects VALUES (5, 'Science', 'SCIENCE', 'Science subject');
INSERT INTO public.subjects VALUES (6, 'Geography', 'GEOGRAPHY', 'Geography subject');
INSERT INTO public.subjects VALUES (7, 'Chemistry', 'CHEMISTRY', 'Chemistry subject');
INSERT INTO public.subjects VALUES (8, 'Biology', 'BIOLOGY', 'Biology subject');
INSERT INTO public.subjects VALUES (9, 'Economics', 'ECONOMICS', 'Economics subject');


--
-- Data for Name: exams; Type: TABLE DATA; Schema: public; Owner: negi
--

INSERT INTO public.exams VALUES (1, 'Mathematics Exam — Class 1', 'Written', '2018-02-10 19:52:18+05:30', '2018-02-10 19:52:18+05:30', 100, 35, 1, 1, 1);
INSERT INTO public.exams VALUES (2, 'Science Exam — Class 1', 'Written', '2018-02-11 19:52:18+05:30', '2018-02-11 19:52:18+05:30', 100, 35, 1, 5, 1);
INSERT INTO public.exams VALUES (3, 'Geography Exam — Class 1', 'Written', '2018-02-12 19:52:18+05:30', '2018-02-12 19:52:18+05:30', 100, 35, 1, 6, 1);
INSERT INTO public.exams VALUES (4, 'Chemistry Exam — Class 1', 'Written', '2018-02-13 19:52:18+05:30', '2018-02-13 19:52:18+05:30', 100, 35, 1, 7, 1);
INSERT INTO public.exams VALUES (5, 'Biology Exam — Class 1', 'Written', '2018-02-15 19:52:18+05:30', '2018-02-15 19:52:18+05:30', 100, 35, 1, 8, 1);
INSERT INTO public.exams VALUES (6, 'Economics Exam — Class 1', 'Written', '2018-02-16 19:52:18+05:30', '2018-02-16 19:52:18+05:30', 100, 35, 1, 9, 1);
INSERT INTO public.exams VALUES (7, 'Mathematics Exam — Class 1', 'Written', '2018-02-10 19:52:18+05:30', '2018-02-10 19:52:18+05:30', 100, 35, 1, 1, 1);
INSERT INTO public.exams VALUES (8, 'Science Exam — Class 1', 'Written', '2018-02-11 19:52:18+05:30', '2018-02-11 19:52:18+05:30', 100, 35, 1, 5, 1);
INSERT INTO public.exams VALUES (9, 'Geography Exam — Class 1', 'Written', '2018-02-12 19:52:18+05:30', '2018-02-12 19:52:18+05:30', 100, 35, 1, 6, 1);
INSERT INTO public.exams VALUES (10, 'Chemistry Exam — Class 1', 'Written', '2018-02-13 19:52:18+05:30', '2018-02-13 19:52:18+05:30', 100, 35, 1, 7, 1);
INSERT INTO public.exams VALUES (11, 'Biology Exam — Class 1', 'Written', '2018-02-15 19:52:18+05:30', '2018-02-15 19:52:18+05:30', 100, 35, 1, 8, 1);
INSERT INTO public.exams VALUES (12, 'Economics Exam — Class 1', 'Written', '2018-02-16 19:52:18+05:30', '2018-02-16 19:52:18+05:30', 100, 35, 1, 9, 1);
INSERT INTO public.exams VALUES (13, 'Mathematics Exam — Class 1', 'Written', '2018-02-10 19:52:18+05:30', '2018-02-10 19:52:18+05:30', 100, 35, 1, 1, 1);
INSERT INTO public.exams VALUES (14, 'Science Exam — Class 1', 'Written', '2018-02-11 19:52:18+05:30', '2018-02-11 19:52:18+05:30', 100, 35, 1, 5, 1);
INSERT INTO public.exams VALUES (15, 'Geography Exam — Class 1', 'Written', '2018-02-12 19:52:18+05:30', '2018-02-12 19:52:18+05:30', 100, 35, 1, 6, 1);
INSERT INTO public.exams VALUES (16, 'Chemistry Exam — Class 1', 'Written', '2018-02-13 19:52:18+05:30', '2018-02-13 19:52:18+05:30', 100, 35, 1, 7, 1);
INSERT INTO public.exams VALUES (17, 'Biology Exam — Class 1', 'Written', '2018-02-15 19:52:18+05:30', '2018-02-15 19:52:18+05:30', 100, 35, 1, 8, 1);
INSERT INTO public.exams VALUES (18, 'Economics Exam — Class 1', 'Written', '2018-02-16 19:52:18+05:30', '2018-02-16 19:52:18+05:30', 100, 35, 1, 9, 1);
INSERT INTO public.exams VALUES (19, 'Mathematics Exam — Class 1', 'Written', '2018-02-10 19:52:18+05:30', '2018-02-10 19:52:18+05:30', 100, 35, 1, 1, 1);
INSERT INTO public.exams VALUES (20, 'Science Exam — Class 1', 'Written', '2018-02-11 19:52:18+05:30', '2018-02-11 19:52:18+05:30', 100, 35, 1, 5, 1);
INSERT INTO public.exams VALUES (21, 'Geography Exam — Class 1', 'Written', '2018-02-12 19:52:18+05:30', '2018-02-12 19:52:18+05:30', 100, 35, 1, 6, 1);
INSERT INTO public.exams VALUES (22, 'Chemistry Exam — Class 1', 'Written', '2018-02-13 19:52:18+05:30', '2018-02-13 19:52:18+05:30', 100, 35, 1, 7, 1);
INSERT INTO public.exams VALUES (23, 'Biology Exam — Class 1', 'Written', '2018-02-15 19:52:18+05:30', '2018-02-15 19:52:18+05:30', 100, 35, 1, 8, 1);
INSERT INTO public.exams VALUES (24, 'Economics Exam — Class 1', 'Written', '2018-02-16 19:52:18+05:30', '2018-02-16 19:52:18+05:30', 100, 35, 1, 9, 1);


--
-- Data for Name: fee_structures; Type: TABLE DATA; Schema: public; Owner: negi
--

INSERT INTO public.fee_structures VALUES (1, 'Tuition Fee', 15000, '2024-11-20 05:30:00+05:30', 1, 1);
INSERT INTO public.fee_structures VALUES (2, 'Transport Fee', 5000, '2024-11-18 05:30:00+05:30', 1, 1);
INSERT INTO public.fee_structures VALUES (3, 'Library Fee', 2000, '2024-11-10 05:30:00+05:30', 1, 1);
INSERT INTO public.fee_structures VALUES (4, 'Sports Fee', 3000, '2024-11-05 05:30:00+05:30', 1, 1);
INSERT INTO public.fee_structures VALUES (5, 'Lab Fee', 4000, '2024-11-12 05:30:00+05:30', 1, 1);
INSERT INTO public.fee_structures VALUES (6, 'Examination Fee', 2500, '2024-10-30 05:30:00+05:30', 1, 1);
INSERT INTO public.fee_structures VALUES (7, 'Development Fee', 10000, '2024-11-15 05:30:00+05:30', 1, 1);
INSERT INTO public.fee_structures VALUES (8, 'Hostel Fee', 50000, '2024-11-01 05:30:00+05:30', 1, 1);
INSERT INTO public.fee_structures VALUES (9, 'Maintenance Fee', 2000, '2024-11-20 05:30:00+05:30', 1, 1);
INSERT INTO public.fee_structures VALUES (10, 'Cultural Activities Fee', 1500, '2024-11-14 05:30:00+05:30', 1, 1);
INSERT INTO public.fee_structures VALUES (11, 'Computer Lab Fee', 3000, '2024-11-05 05:30:00+05:30', 1, 1);
INSERT INTO public.fee_structures VALUES (12, 'Workshop Fee', 5000, '2024-11-08 05:30:00+05:30', 1, 1);
INSERT INTO public.fee_structures VALUES (13, 'Medical Fee', 1000, '2024-11-10 05:30:00+05:30', 1, 1);
INSERT INTO public.fee_structures VALUES (14, 'Uniform Fee', 3000, '2024-11-03 05:30:00+05:30', 1, 1);
INSERT INTO public.fee_structures VALUES (15, 'Miscellaneous Fee', 1000, '2024-11-15 05:30:00+05:30', 1, 1);
INSERT INTO public.fee_structures VALUES (16, 'Annual Fee', 10000, NULL, 1, 1);


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: negi
--

INSERT INTO public.students VALUES ('7b69a695-fa70-4ae6-8309-e052e7dca9cb', '15', 'Jay', 'Soni', 'female', '2005-11-30 05:30:00+05:30', '1234567890', '0987654335', '159 Maple St, Anytown, USA', '2018-02-01 05:30:00+05:30', 'assets/images/user/user4.jpg', '0cff089b-6bbe-42ab-a414-8c86934005f3', NULL);
INSERT INTO public.students VALUES ('166f74c1-027f-4a1b-b347-09207fac459f', '16', 'Pankaj', 'Sinha', 'male', '2005-02-05 05:30:00+05:30', '1234567890', '0987654336', '258 Fir St, Anytown, USA', '2018-02-01 05:30:00+05:30', 'assets/images/user/user5.jpg', '18ecb1d0-ba65-495b-a92b-a495551fc1e3', NULL);
INSERT INTO public.students VALUES ('ab6efafc-6929-40bd-8109-a0841ebdd598', '1', 'John', 'Deo', 'male', '2005-06-15 05:30:00+05:30', '1234567890', '0987654321', '123 Main St, Anytown, USA', '2018-02-01 05:30:00+05:30', 'assets/images/user/user1.jpg', '5d872a91-8bf5-4a32-a51d-ea43c708f777', NULL);
INSERT INTO public.students VALUES ('7f35427e-f81b-4950-8457-25f8f66c80cb', '2', 'Sarah', 'Smith', 'female', '2005-08-20 05:30:00+05:30', '1234567890', '0987654322', '456 Elm St, Anytown, USA', '2018-02-01 05:30:00+05:30', 'assets/images/user/user2.jpg', 'c69246a5-bff7-46a4-abfe-ef8d0ce6d9d3', NULL);
INSERT INTO public.students VALUES ('b371e37a-b42d-454f-bebc-b8ede2a88e9e', '3', 'John', 'Deo', 'male', '2005-04-15 05:30:00+05:30', '1234567890', '0987654323', '789 Pine St, Anytown, USA', '2018-02-01 05:30:00+05:30', 'assets/images/user/user3.jpg', '18bf734b-a9cd-49f1-a8c1-6843a28d5e9e', NULL);
INSERT INTO public.students VALUES ('2cb1585e-950b-4fa3-bf32-afc07a2ac6c0', '4', 'Jay', 'Soni', 'female', '2005-05-10 05:30:00+05:30', '1234567890', '0987654324', '321 Oak St, Anytown, USA', '2018-02-01 05:30:00+05:30', 'assets/images/user/user4.jpg', '5c08b527-46a9-4037-9fb9-b73cc3569fc2', NULL);
INSERT INTO public.students VALUES ('d7acb1c2-5b48-4a9d-ad47-405f836d4d0e', '5', 'Smita', 'Parikh', 'male', '2005-03-30 05:30:00+05:30', '1234567890', '0987654325', '654 Maple St, Anytown, USA', '2018-02-01 05:30:00+05:30', 'assets/images/user/user5.jpg', 'f88a64cc-4583-455f-a70b-cf10beb8fd7b', NULL);
INSERT INTO public.students VALUES ('8240d58e-9d44-400a-9b0e-3d6864e72973', '6', 'Pankaj', 'Sinha', 'male', '2005-02-12 05:30:00+05:30', '1234567890', '0987654326', '159 Cedar St, Anytown, USA', '2018-02-01 05:30:00+05:30', 'assets/images/user/user6.jpg', '06026e28-8201-4796-81fd-fc928c9f5f3e', NULL);
INSERT INTO public.students VALUES ('ab51aa03-2f4f-42fc-b422-4861ba86d678', '7', 'Pankaj', 'Sinha', 'male', '2005-11-21 05:30:00+05:30', '1234567890', '0987654327', '852 Birch St, Anytown, USA', '2018-02-01 05:30:00+05:30', 'assets/images/user/user7.jpg', '0ad8ebee-9ba6-4875-9e38-d60bdbe6ea62', NULL);
INSERT INTO public.students VALUES ('95f23e62-03ff-4fe9-b402-fbae296bd6c5', '8', 'Jay', 'Soni', 'female', '2005-07-18 05:30:00+05:30', '1234567890', '0987654328', '147 Spruce St, Anytown, USA', '2018-02-01 05:30:00+05:30', 'assets/images/user/user8.jpg', '3b887faa-b756-4c20-94f9-c3f79fe9db3a', NULL);
INSERT INTO public.students VALUES ('9040a218-7c5e-40a0-ae02-32f3b1c158b3', '9', 'Smita', 'Parikh', 'female', '2005-09-25 05:30:00+05:30', '1234567890', '0987654329', '258 Fir St, Anytown, USA', '2018-02-01 05:30:00+05:30', 'assets/images/user/user9.jpg', '0d8fa89c-7848-41b7-921b-470e8bc45ac1', NULL);
INSERT INTO public.students VALUES ('235eb336-496d-4795-876b-57d322672144', '10', 'Pooja', 'Patel', 'male', '2005-10-05 05:30:00+05:30', '1234567890', '0987654330', '369 Willow St, Anytown, USA', '2018-02-01 05:30:00+05:30', 'assets/images/user/user10.jpg', '2bd9dece-25d7-4d12-bc7b-aa91f584e5e7', NULL);
INSERT INTO public.students VALUES ('b2f59144-4afb-4861-bdfd-ebbac1e01f35', '11', 'Jay', 'Soni', 'female', '2005-12-15 05:30:00+05:30', '1234567890', '0987654331', '741 Cherry St, Anytown, USA', '2018-02-01 05:30:00+05:30', 'assets/images/user/user1.jpg', '77ab5072-0d8a-4888-868d-043ebbcf74d8', NULL);
INSERT INTO public.students VALUES ('b81bad5f-8c0c-4cb2-8930-9c05cd4951bc', '12', 'Pooja', 'Patel', 'male', '2005-01-20 05:30:00+05:30', '1234567890', '0987654332', '963 Ash St, Anytown, USA', '2018-02-01 05:30:00+05:30', 'assets/images/user/user1.jpg', '86f49b67-675e-490b-b87c-f717fc6e5a03', NULL);
INSERT INTO public.students VALUES ('1f443d6b-072f-4c62-9253-22d1a863a31f', '13', 'Sarah', 'Smith', 'female', '2005-03-05 05:30:00+05:30', '1234567890', '0987654333', '852 Elm St, Anytown, USA', '2018-02-01 05:30:00+05:30', 'assets/images/user/user2.jpg', '0d3abb3a-5cda-4687-9a6b-0b893e8936d3', NULL);
INSERT INTO public.students VALUES ('d0467baa-ba64-4987-bdcd-2bbe810d551b', '14', 'Smita', 'Parikh', 'male', '2005-07-22 05:30:00+05:30', '1234567890', '0987654334', '456 Oak St, Anytown, USA', '2018-02-01 05:30:00+05:30', 'assets/images/user/user3.jpg', '98012dd4-5ab6-4b9f-83dc-0e5c24476bea', NULL);


--
-- Data for Name: fee_payments; Type: TABLE DATA; Schema: public; Owner: negi
--

INSERT INTO public.fee_payments VALUES (1, 170, '2026-06-11 10:59:33.816516+05:30', 'unpaid', NULL, 'IN-5645644', NULL, 'ab6efafc-6929-40bd-8109-a0841ebdd598', 3);
INSERT INTO public.fee_payments VALUES (2, 170, '2026-06-11 10:59:33.819204+05:30', 'unpaid', NULL, 'IN-5645644', NULL, '7f35427e-f81b-4950-8457-25f8f66c80cb', 16);
INSERT INTO public.fee_payments VALUES (3, 250, '2026-06-11 10:59:33.821611+05:30', 'unpaid', NULL, 'IN-5645644', NULL, 'b371e37a-b42d-454f-bebc-b8ede2a88e9e', 15);
INSERT INTO public.fee_payments VALUES (4, 340, '2019-02-10 19:52:18+05:30', 'paid', 'cheque', 'IN-5645644', NULL, '2cb1585e-950b-4fa3-bf32-afc07a2ac6c0', 16);
INSERT INTO public.fee_payments VALUES (5, 170, '2019-02-10 19:52:18+05:30', 'paid', 'credit card', 'IN-5645644', NULL, 'd7acb1c2-5b48-4a9d-ad47-405f836d4d0e', 2);
INSERT INTO public.fee_payments VALUES (6, 340, '2019-02-10 19:52:18+05:30', 'paid', 'cash', 'IN-5645644', NULL, '8240d58e-9d44-400a-9b0e-3d6864e72973', 6);
INSERT INTO public.fee_payments VALUES (7, 340, '2026-06-11 10:59:33.831466+05:30', 'unpaid', NULL, 'IN-5645644', NULL, 'ab51aa03-2f4f-42fc-b422-4861ba86d678', 1);
INSERT INTO public.fee_payments VALUES (8, 250, '2019-02-10 19:52:18+05:30', 'paid', 'credit card', 'IN-5645644', NULL, '95f23e62-03ff-4fe9-b402-fbae296bd6c5', 3);
INSERT INTO public.fee_payments VALUES (9, 170, '2026-06-11 10:59:33.836301+05:30', 'unpaid', NULL, 'IN-5645644', NULL, '9040a218-7c5e-40a0-ae02-32f3b1c158b3', 2);
INSERT INTO public.fee_payments VALUES (10, 340, '2019-02-10 19:52:18+05:30', 'paid', 'credit card', 'IN-5645644', NULL, '235eb336-496d-4795-876b-57d322672144', 1);
INSERT INTO public.fee_payments VALUES (11, 340, '2026-06-11 10:59:33.84128+05:30', 'unpaid', NULL, 'IN-5645644', NULL, 'b2f59144-4afb-4861-bdfd-ebbac1e01f35', 16);
INSERT INTO public.fee_payments VALUES (12, 340, '2019-02-10 19:52:18+05:30', 'paid', 'cheque', 'IN-5645644', NULL, 'b81bad5f-8c0c-4cb2-8930-9c05cd4951bc', 6);
INSERT INTO public.fee_payments VALUES (13, 170, '2026-06-11 10:59:33.846203+05:30', 'unpaid', NULL, 'IN-5645644', NULL, '1f443d6b-072f-4c62-9253-22d1a863a31f', 1);
INSERT INTO public.fee_payments VALUES (14, 250, '2026-06-11 10:59:33.84844+05:30', 'unpaid', NULL, 'IN-5645644', NULL, 'd0467baa-ba64-4987-bdcd-2bbe810d551b', 2);
INSERT INTO public.fee_payments VALUES (15, 340, '2019-02-10 19:52:18+05:30', 'paid', 'online transfer', 'IN-5645644', NULL, '7b69a695-fa70-4ae6-8309-e052e7dca9cb', 1);
INSERT INTO public.fee_payments VALUES (16, 340, '2019-02-10 19:52:18+05:30', 'paid', 'cash', 'IN-5645644', NULL, '166f74c1-027f-4a1b-b347-09207fac459f', 16);
INSERT INTO public.fee_payments VALUES (17, 170, '2026-06-11 11:50:19.360979+05:30', 'unpaid', NULL, 'IN-5645644', NULL, 'ab6efafc-6929-40bd-8109-a0841ebdd598', 3);
INSERT INTO public.fee_payments VALUES (18, 170, '2026-06-11 11:50:19.363779+05:30', 'unpaid', NULL, 'IN-5645644', NULL, '7f35427e-f81b-4950-8457-25f8f66c80cb', 16);
INSERT INTO public.fee_payments VALUES (19, 250, '2026-06-11 11:50:19.366405+05:30', 'unpaid', NULL, 'IN-5645644', NULL, 'b371e37a-b42d-454f-bebc-b8ede2a88e9e', 15);
INSERT INTO public.fee_payments VALUES (20, 340, '2019-02-10 19:52:18+05:30', 'paid', 'cheque', 'IN-5645644', NULL, '2cb1585e-950b-4fa3-bf32-afc07a2ac6c0', 16);
INSERT INTO public.fee_payments VALUES (21, 170, '2019-02-10 19:52:18+05:30', 'paid', 'credit card', 'IN-5645644', NULL, 'd7acb1c2-5b48-4a9d-ad47-405f836d4d0e', 2);
INSERT INTO public.fee_payments VALUES (22, 340, '2019-02-10 19:52:18+05:30', 'paid', 'cash', 'IN-5645644', NULL, '8240d58e-9d44-400a-9b0e-3d6864e72973', 6);
INSERT INTO public.fee_payments VALUES (23, 340, '2026-06-11 11:50:19.398546+05:30', 'unpaid', NULL, 'IN-5645644', NULL, 'ab51aa03-2f4f-42fc-b422-4861ba86d678', 1);
INSERT INTO public.fee_payments VALUES (24, 250, '2019-02-10 19:52:18+05:30', 'paid', 'credit card', 'IN-5645644', NULL, '95f23e62-03ff-4fe9-b402-fbae296bd6c5', 3);
INSERT INTO public.fee_payments VALUES (25, 170, '2026-06-11 11:50:19.403744+05:30', 'unpaid', NULL, 'IN-5645644', NULL, '9040a218-7c5e-40a0-ae02-32f3b1c158b3', 2);
INSERT INTO public.fee_payments VALUES (26, 340, '2019-02-10 19:52:18+05:30', 'paid', 'credit card', 'IN-5645644', NULL, '235eb336-496d-4795-876b-57d322672144', 1);
INSERT INTO public.fee_payments VALUES (27, 340, '2026-06-11 11:50:19.408481+05:30', 'unpaid', NULL, 'IN-5645644', NULL, 'b2f59144-4afb-4861-bdfd-ebbac1e01f35', 16);
INSERT INTO public.fee_payments VALUES (28, 340, '2019-02-10 19:52:18+05:30', 'paid', 'cheque', 'IN-5645644', NULL, 'b81bad5f-8c0c-4cb2-8930-9c05cd4951bc', 6);
INSERT INTO public.fee_payments VALUES (29, 170, '2026-06-11 11:50:19.413081+05:30', 'unpaid', NULL, 'IN-5645644', NULL, '1f443d6b-072f-4c62-9253-22d1a863a31f', 1);
INSERT INTO public.fee_payments VALUES (30, 250, '2026-06-11 11:50:19.4156+05:30', 'unpaid', NULL, 'IN-5645644', NULL, 'd0467baa-ba64-4987-bdcd-2bbe810d551b', 2);
INSERT INTO public.fee_payments VALUES (31, 340, '2019-02-10 19:52:18+05:30', 'paid', 'online transfer', 'IN-5645644', NULL, '7b69a695-fa70-4ae6-8309-e052e7dca9cb', 1);
INSERT INTO public.fee_payments VALUES (32, 340, '2019-02-10 19:52:18+05:30', 'paid', 'cash', 'IN-5645644', NULL, '166f74c1-027f-4a1b-b347-09207fac459f', 16);
INSERT INTO public.fee_payments VALUES (33, 170, '2026-06-11 11:51:11.319529+05:30', 'unpaid', NULL, 'IN-5645644', NULL, 'ab6efafc-6929-40bd-8109-a0841ebdd598', 3);
INSERT INTO public.fee_payments VALUES (34, 170, '2026-06-11 11:51:11.326444+05:30', 'unpaid', NULL, 'IN-5645644', NULL, '7f35427e-f81b-4950-8457-25f8f66c80cb', 16);
INSERT INTO public.fee_payments VALUES (35, 250, '2026-06-11 11:51:11.329091+05:30', 'unpaid', NULL, 'IN-5645644', NULL, 'b371e37a-b42d-454f-bebc-b8ede2a88e9e', 15);
INSERT INTO public.fee_payments VALUES (36, 340, '2019-02-10 19:52:18+05:30', 'paid', 'cheque', 'IN-5645644', NULL, '2cb1585e-950b-4fa3-bf32-afc07a2ac6c0', 16);
INSERT INTO public.fee_payments VALUES (37, 170, '2019-02-10 19:52:18+05:30', 'paid', 'credit card', 'IN-5645644', NULL, 'd7acb1c2-5b48-4a9d-ad47-405f836d4d0e', 2);
INSERT INTO public.fee_payments VALUES (38, 340, '2019-02-10 19:52:18+05:30', 'paid', 'cash', 'IN-5645644', NULL, '8240d58e-9d44-400a-9b0e-3d6864e72973', 6);
INSERT INTO public.fee_payments VALUES (39, 340, '2026-06-11 11:51:11.339068+05:30', 'unpaid', NULL, 'IN-5645644', NULL, 'ab51aa03-2f4f-42fc-b422-4861ba86d678', 1);
INSERT INTO public.fee_payments VALUES (40, 250, '2019-02-10 19:52:18+05:30', 'paid', 'credit card', 'IN-5645644', NULL, '95f23e62-03ff-4fe9-b402-fbae296bd6c5', 3);
INSERT INTO public.fee_payments VALUES (41, 170, '2026-06-11 11:51:11.344483+05:30', 'unpaid', NULL, 'IN-5645644', NULL, '9040a218-7c5e-40a0-ae02-32f3b1c158b3', 2);
INSERT INTO public.fee_payments VALUES (42, 340, '2019-02-10 19:52:18+05:30', 'paid', 'credit card', 'IN-5645644', NULL, '235eb336-496d-4795-876b-57d322672144', 1);
INSERT INTO public.fee_payments VALUES (43, 340, '2026-06-11 11:51:11.349196+05:30', 'unpaid', NULL, 'IN-5645644', NULL, 'b2f59144-4afb-4861-bdfd-ebbac1e01f35', 16);
INSERT INTO public.fee_payments VALUES (44, 340, '2019-02-10 19:52:18+05:30', 'paid', 'cheque', 'IN-5645644', NULL, 'b81bad5f-8c0c-4cb2-8930-9c05cd4951bc', 6);
INSERT INTO public.fee_payments VALUES (45, 170, '2026-06-11 11:51:11.354049+05:30', 'unpaid', NULL, 'IN-5645644', NULL, '1f443d6b-072f-4c62-9253-22d1a863a31f', 1);
INSERT INTO public.fee_payments VALUES (46, 250, '2026-06-11 11:51:11.356669+05:30', 'unpaid', NULL, 'IN-5645644', NULL, 'd0467baa-ba64-4987-bdcd-2bbe810d551b', 2);
INSERT INTO public.fee_payments VALUES (47, 340, '2019-02-10 19:52:18+05:30', 'paid', 'online transfer', 'IN-5645644', NULL, '7b69a695-fa70-4ae6-8309-e052e7dca9cb', 1);
INSERT INTO public.fee_payments VALUES (48, 340, '2019-02-10 19:52:18+05:30', 'paid', 'cash', 'IN-5645644', NULL, '166f74c1-027f-4a1b-b347-09207fac459f', 16);
INSERT INTO public.fee_payments VALUES (49, 170, '2026-06-11 12:19:36.315611+05:30', 'unpaid', NULL, 'IN-5645644', NULL, 'ab6efafc-6929-40bd-8109-a0841ebdd598', 3);
INSERT INTO public.fee_payments VALUES (50, 170, '2026-06-11 12:19:36.318716+05:30', 'unpaid', NULL, 'IN-5645644', NULL, '7f35427e-f81b-4950-8457-25f8f66c80cb', 16);
INSERT INTO public.fee_payments VALUES (51, 250, '2026-06-11 12:19:36.321446+05:30', 'unpaid', NULL, 'IN-5645644', NULL, 'b371e37a-b42d-454f-bebc-b8ede2a88e9e', 15);
INSERT INTO public.fee_payments VALUES (52, 340, '2019-02-10 19:52:18+05:30', 'paid', 'cheque', 'IN-5645644', NULL, '2cb1585e-950b-4fa3-bf32-afc07a2ac6c0', 16);
INSERT INTO public.fee_payments VALUES (53, 170, '2019-02-10 19:52:18+05:30', 'paid', 'credit card', 'IN-5645644', NULL, 'd7acb1c2-5b48-4a9d-ad47-405f836d4d0e', 2);
INSERT INTO public.fee_payments VALUES (54, 340, '2019-02-10 19:52:18+05:30', 'paid', 'cash', 'IN-5645644', NULL, '8240d58e-9d44-400a-9b0e-3d6864e72973', 6);
INSERT INTO public.fee_payments VALUES (55, 340, '2026-06-11 12:19:36.331557+05:30', 'unpaid', NULL, 'IN-5645644', NULL, 'ab51aa03-2f4f-42fc-b422-4861ba86d678', 1);
INSERT INTO public.fee_payments VALUES (56, 250, '2019-02-10 19:52:18+05:30', 'paid', 'credit card', 'IN-5645644', NULL, '95f23e62-03ff-4fe9-b402-fbae296bd6c5', 3);
INSERT INTO public.fee_payments VALUES (57, 170, '2026-06-11 12:19:36.336476+05:30', 'unpaid', NULL, 'IN-5645644', NULL, '9040a218-7c5e-40a0-ae02-32f3b1c158b3', 2);
INSERT INTO public.fee_payments VALUES (58, 340, '2019-02-10 19:52:18+05:30', 'paid', 'credit card', 'IN-5645644', NULL, '235eb336-496d-4795-876b-57d322672144', 1);
INSERT INTO public.fee_payments VALUES (59, 340, '2026-06-11 12:19:36.341336+05:30', 'unpaid', NULL, 'IN-5645644', NULL, 'b2f59144-4afb-4861-bdfd-ebbac1e01f35', 16);
INSERT INTO public.fee_payments VALUES (60, 340, '2019-02-10 19:52:18+05:30', 'paid', 'cheque', 'IN-5645644', NULL, 'b81bad5f-8c0c-4cb2-8930-9c05cd4951bc', 6);
INSERT INTO public.fee_payments VALUES (61, 170, '2026-06-11 12:19:36.346273+05:30', 'unpaid', NULL, 'IN-5645644', NULL, '1f443d6b-072f-4c62-9253-22d1a863a31f', 1);
INSERT INTO public.fee_payments VALUES (62, 250, '2026-06-11 12:19:36.348788+05:30', 'unpaid', NULL, 'IN-5645644', NULL, 'd0467baa-ba64-4987-bdcd-2bbe810d551b', 2);
INSERT INTO public.fee_payments VALUES (63, 340, '2019-02-10 19:52:18+05:30', 'paid', 'online transfer', 'IN-5645644', NULL, '7b69a695-fa70-4ae6-8309-e052e7dca9cb', 1);
INSERT INTO public.fee_payments VALUES (64, 340, '2019-02-10 19:52:18+05:30', 'paid', 'cash', 'IN-5645644', NULL, '166f74c1-027f-4a1b-b347-09207fac459f', 16);


--
-- Data for Name: student_attendances; Type: TABLE DATA; Schema: public; Owner: negi
--

INSERT INTO public.student_attendances VALUES (1, '2019-02-25 19:52:18+05:30', 'absent', 'Leave for marriage function', 'ab6efafc-6929-40bd-8109-a0841ebdd598', 1, 1);
INSERT INTO public.student_attendances VALUES (2, '2019-02-17 19:52:18+05:30', 'present', NULL, '7f35427e-f81b-4950-8457-25f8f66c80cb', 1, 1);
INSERT INTO public.student_attendances VALUES (3, '2020-01-01 19:52:18+05:30', 'present', NULL, 'b371e37a-b42d-454f-bebc-b8ede2a88e9e', 2, 1);
INSERT INTO public.student_attendances VALUES (4, '2019-02-01 19:52:18+05:30', 'absent', 'Leave for marriage function', '2cb1585e-950b-4fa3-bf32-afc07a2ac6c0', 1, 1);
INSERT INTO public.student_attendances VALUES (5, '2019-02-02 19:52:18+05:30', 'present', NULL, 'd7acb1c2-5b48-4a9d-ad47-405f836d4d0e', 5, 1);
INSERT INTO public.student_attendances VALUES (6, '2019-02-26 19:52:18+05:30', 'present', NULL, '8240d58e-9d44-400a-9b0e-3d6864e72973', 3, 1);
INSERT INTO public.student_attendances VALUES (7, '2019-02-22 19:52:18+05:30', 'absent', 'Leave for marriage function', 'ab51aa03-2f4f-42fc-b422-4861ba86d678', 2, 1);
INSERT INTO public.student_attendances VALUES (8, '2019-02-19 19:52:18+05:30', 'present', NULL, '95f23e62-03ff-4fe9-b402-fbae296bd6c5', 1, 1);
INSERT INTO public.student_attendances VALUES (9, '2019-02-14 19:52:18+05:30', 'absent', 'Leave for marriage function', '9040a218-7c5e-40a0-ae02-32f3b1c158b3', 5, 1);
INSERT INTO public.student_attendances VALUES (10, '2019-02-27 19:52:18+05:30', 'present', NULL, '235eb336-496d-4795-876b-57d322672144', 2, 1);
INSERT INTO public.student_attendances VALUES (11, '2019-02-21 19:52:18+05:30', 'absent', 'Leave for marriage function', 'b2f59144-4afb-4861-bdfd-ebbac1e01f35', 1, 1);
INSERT INTO public.student_attendances VALUES (12, '2019-02-10 19:52:18+05:30', 'present', NULL, 'b81bad5f-8c0c-4cb2-8930-9c05cd4951bc', 3, 1);
INSERT INTO public.student_attendances VALUES (13, '2019-02-10 19:52:18+05:30', 'absent', 'Leave for marriage function', '1f443d6b-072f-4c62-9253-22d1a863a31f', 6, 1);
INSERT INTO public.student_attendances VALUES (14, '2019-02-16 19:52:18+05:30', 'absent', 'Leave for marriage function', 'd0467baa-ba64-4987-bdcd-2bbe810d551b', 5, 1);
INSERT INTO public.student_attendances VALUES (15, '2019-02-04 19:52:18+05:30', 'present', NULL, '7b69a695-fa70-4ae6-8309-e052e7dca9cb', 6, 1);
INSERT INTO public.student_attendances VALUES (16, '2019-02-04 19:52:18+05:30', 'present', NULL, '166f74c1-027f-4a1b-b347-09207fac459f', 1, 1);


--
-- Data for Name: tasks; Type: TABLE DATA; Schema: public; Owner: negi
--

INSERT INTO public.tasks VALUES (1, 'Develop angular project', 'note details', 'Completed', 'High', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (2, 'File not found exception solve', 'note details', 'Pending', 'High', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (3, 'Test project and find bug', 'note details', 'Pending', 'Low', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (4, 'Image not found error', 'note details', 'Completed', 'Normal', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (5, 'Solve client error in form', 'note details', 'Pending', 'High', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (6, 'Tab button is flickering on hover', 'note details', 'Pending', 'Normal', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (7, 'Chart responsive issue solve', 'note details', 'Completed', 'High', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (8, 'Web service data load issue', 'note details', 'Pending', 'High', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (9, 'Java compile error', 'note details', 'Pending', 'Low', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (10, 'Integrate project with spring boot', 'note details', 'Completed', 'High', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (11, 'Update latest angular version', 'note details', 'Pending', 'High', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (12, 'Integrate lazy loading on project', 'note details', 'Pending', 'Normal', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (13, 'js file not load properly', 'note details', 'Completed', 'Normal', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (14, 'need to change color of table', 'note details', 'Pending', 'Normal', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (15, 'modal window select item issue', 'note details', 'Pending', 'Low', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (16, 'Develop angular project', 'note details', 'Completed', 'High', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (17, 'File not found exception solve', 'note details', 'Pending', 'High', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (18, 'Test project and find bug', 'note details', 'Pending', 'Low', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (19, 'Image not found error', 'note details', 'Completed', 'Normal', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (20, 'Solve client error in form', 'note details', 'Pending', 'High', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (21, 'Tab button is flickering on hover', 'note details', 'Pending', 'Normal', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (22, 'Chart responsive issue solve', 'note details', 'Completed', 'High', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (23, 'Web service data load issue', 'note details', 'Pending', 'High', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (24, 'Java compile error', 'note details', 'Pending', 'Low', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (25, 'Integrate project with spring boot', 'note details', 'Completed', 'High', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (26, 'Update latest angular version', 'note details', 'Pending', 'High', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (27, 'Integrate lazy loading on project', 'note details', 'Pending', 'Normal', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (28, 'js file not load properly', 'note details', 'Completed', 'Normal', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (29, 'need to change color of table', 'note details', 'Pending', 'Normal', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (30, 'modal window select item issue', 'note details', 'Pending', 'Low', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (31, 'Develop angular project', 'note details', 'Completed', 'High', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (32, 'File not found exception solve', 'note details', 'Pending', 'High', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (33, 'Test project and find bug', 'note details', 'Pending', 'Low', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (34, 'Image not found error', 'note details', 'Completed', 'Normal', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (35, 'Solve client error in form', 'note details', 'Pending', 'High', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (36, 'Tab button is flickering on hover', 'note details', 'Pending', 'Normal', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (37, 'Chart responsive issue solve', 'note details', 'Completed', 'High', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (38, 'Web service data load issue', 'note details', 'Pending', 'High', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (39, 'Java compile error', 'note details', 'Pending', 'Low', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (40, 'Integrate project with spring boot', 'note details', 'Completed', 'High', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (41, 'Update latest angular version', 'note details', 'Pending', 'High', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (42, 'Integrate lazy loading on project', 'note details', 'Pending', 'Normal', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (43, 'js file not load properly', 'note details', 'Completed', 'Normal', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (44, 'need to change color of table', 'note details', 'Pending', 'Normal', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (45, 'modal window select item issue', 'note details', 'Pending', 'Low', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (46, 'Develop angular project', 'note details', 'Completed', 'High', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (47, 'File not found exception solve', 'note details', 'Pending', 'High', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (48, 'Test project and find bug', 'note details', 'Pending', 'Low', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (49, 'Image not found error', 'note details', 'Completed', 'Normal', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (50, 'Solve client error in form', 'note details', 'Pending', 'High', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (51, 'Tab button is flickering on hover', 'note details', 'Pending', 'Normal', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (52, 'Chart responsive issue solve', 'note details', 'Completed', 'High', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (53, 'Web service data load issue', 'note details', 'Pending', 'High', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (54, 'Java compile error', 'note details', 'Pending', 'Low', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (55, 'Integrate project with spring boot', 'note details', 'Completed', 'High', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (56, 'Update latest angular version', 'note details', 'Pending', 'High', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (57, 'Integrate lazy loading on project', 'note details', 'Pending', 'Normal', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (58, 'js file not load properly', 'note details', 'Completed', 'Normal', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (59, 'need to change color of table', 'note details', 'Pending', 'Normal', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');
INSERT INTO public.tasks VALUES (60, 'modal window select item issue', 'note details', 'Pending', 'Low', 0, '2018-02-25 19:52:18+05:30', '491d026a-480f-4b30-996c-43417ead5113', '491d026a-480f-4b30-996c-43417ead5113');


--
-- Data for Name: teachers; Type: TABLE DATA; Schema: public; Owner: negi
--

INSERT INTO public.teachers VALUES ('300053b5-c81b-41fd-b8a1-45ecad6ea277', 'Jay', 'Soni', 'female', '1986-03-25 05:30:00+05:30', '1234567890', '123 Main St, Anytown, USA', 'B.B.A., M.B.A.', '2018-02-25 05:30:00+05:30', 'assets/images/user/user4.jpg', '6c6b1866-5352-4374-8549-73ac0f45a591', 1);
INSERT INTO public.teachers VALUES ('47417291-ca1e-4fac-bfca-6d724a523ba9', 'Pankaj', 'Sinha', 'male', '1985-11-11 05:30:00+05:30', '1234567890', '123 Main St, Anytown, USA', 'M.Com., P.H.D.', '2018-02-25 05:30:00+05:30', 'assets/images/user/user5.jpg', 'ce5623c3-d931-48b2-b199-26dbd0b28158', 2);
INSERT INTO public.teachers VALUES ('6a983437-2ef8-487b-80f6-b37823a757fa', 'John', 'Deo', 'male', '1985-06-15 05:30:00+05:30', '1234567890', '123 Main St, Anytown, USA', 'M.Sc., PHD.', '2018-02-25 05:30:00+05:30', 'assets/images/user/user1.jpg', '491d026a-480f-4b30-996c-43417ead5113', 4);
INSERT INTO public.teachers VALUES ('ea9c56e4-6baf-466d-935d-3dad8b362054', 'Sarah', 'Smith', 'female', '1990-05-20 05:30:00+05:30', '1234567890', '123 Main St, Anytown, USA', 'M.C.A.', '2018-02-12 05:30:00+05:30', 'assets/images/user/user2.jpg', 'e867f6af-bc13-4358-93b5-a7669ec0a854', 2);
INSERT INTO public.teachers VALUES ('2bcc6ad8-6eb7-489f-95da-4849b7c5b8b0', 'John', 'Deo', 'male', '1987-08-15 05:30:00+05:30', '1234567890', '123 Main St, Anytown, USA', 'B.A., M.A.', '2018-02-25 05:30:00+05:30', 'assets/images/user/user3.jpg', '6c2ae23c-ce81-48fd-ab33-617c4004e639', 2);
INSERT INTO public.teachers VALUES ('2cfa46d7-0100-47ff-a102-aefa7a647c07', 'Jay', 'Soni', 'female', '1984-04-10 05:30:00+05:30', '1234567890', '123 Main St, Anytown, USA', 'M.Com., P.H.D.', '2018-02-25 05:30:00+05:30', 'assets/images/user/user4.jpg', '1b9b79a9-cf07-491c-8c97-fe58a716db7e', 4);
INSERT INTO public.teachers VALUES ('74129ce2-d2fe-408d-a815-95c00b2703d5', 'Smita', 'Parikh', 'male', '1989-09-09 05:30:00+05:30', '1234567890', '123 Main St, Anytown, USA', 'B.C.A., M.C.A.', '2018-02-25 05:30:00+05:30', 'assets/images/user/user5.jpg', '391bbec8-0b52-425c-9337-c429477729d1', 3);
INSERT INTO public.teachers VALUES ('c254ae7a-f55a-4877-a277-d8d836e097f9', 'Pankaj', 'Sinha', 'male', '1985-11-11 05:30:00+05:30', '1234567890', '123 Main St, Anytown, USA', 'M.Com., P.H.D.', '2018-02-25 05:30:00+05:30', 'assets/images/user/user6.jpg', '8306b79e-3aed-4a55-b516-3e4dcfca5da7', 5);
INSERT INTO public.teachers VALUES ('504f467f-a901-42e0-8149-ab54363178ff', 'Pankaj', 'Sinha', 'male', '1986-03-12 05:30:00+05:30', '1234567890', '123 Main St, Anytown, USA', 'M.Sc., PHD.', '2018-02-25 05:30:00+05:30', 'assets/images/user/user7.jpg', '5fc41801-d39e-4a42-b23e-3a7f776293fd', 1);
INSERT INTO public.teachers VALUES ('a3aa5a20-ac3e-413a-87ab-2e86cff94084', 'Jay', 'Soni', 'female', '1988-02-22 05:30:00+05:30', '1234567890', '123 Main St, Anytown, USA', 'B.B.A., M.B.A.', '2018-02-25 05:30:00+05:30', 'assets/images/user/user8.jpg', 'dd5d1d99-c958-4697-9197-298a70e29536', 4);
INSERT INTO public.teachers VALUES ('d6d8c21d-1841-4f92-aa85-e264c27fbd6f', 'Smita', 'Parikh', 'female', '1992-01-30 05:30:00+05:30', '1234567890', '123 Main St, Anytown, USA', 'B.B.A., M.B.A.', '2018-02-25 05:30:00+05:30', 'assets/images/user/user9.jpg', '830102fe-bb1d-46fd-96ef-b0937d1c032f', 4);
INSERT INTO public.teachers VALUES ('b9419862-6eab-47ca-93c9-99cf96a87b83', 'Pooja', 'Patel', 'male', '1990-12-20 05:30:00+05:30', '1234567890', '123 Main St, Anytown, USA', 'M.Com., P.H.D.', '2018-02-25 05:30:00+05:30', 'assets/images/user/user10.jpg', 'ba59b08a-1343-44bb-9922-ef23a36d562c', 2);
INSERT INTO public.teachers VALUES ('86c6c87e-c1c2-4f5e-b38e-c79babb7a25a', 'Jay', 'Soni', 'female', '1989-04-01 05:30:00+05:30', '1234567890', '123 Main St, Anytown, USA', 'M.Sc., PHD.', '2018-02-25 05:30:00+05:30', 'assets/images/user/user1.jpg', '91fd5fd9-11f5-4e48-8fff-3495866bf1a8', 2);
INSERT INTO public.teachers VALUES ('f00f910f-bc14-4035-a7d4-b2ba98b8d066', 'Pooja', 'Patel', 'male', '1991-07-05 05:30:00+05:30', '1234567890', '123 Main St, Anytown, USA', 'B.C.A., M.C.A.', '2018-02-25 05:30:00+05:30', 'assets/images/user/user1.jpg', '8773f19a-d484-449d-8f61-32af5331009d', 4);
INSERT INTO public.teachers VALUES ('3a34d8ef-6dcc-4849-ad02-aeffb227f79c', 'Sarah', 'Smith', 'female', '1995-09-12 05:30:00+05:30', '1234567890', '123 Main St, Anytown, USA', 'M.C.A.', '2018-02-25 05:30:00+05:30', 'assets/images/user/user2.jpg', '5e0448e1-80e2-4354-b7e7-9e0cf57eaceb', 4);
INSERT INTO public.teachers VALUES ('2df22e5d-ac50-4a37-b2d8-28a3d8fef965', 'Smita', 'Parikh', 'male', '1992-08-22 05:30:00+05:30', '1234567890', '123 Main St, Anytown, USA', 'B.A., M.A.', '2018-02-25 05:30:00+05:30', 'assets/images/user/user3.jpg', '7b41b2e4-b61a-4fd1-a645-60b6bf8530f6', 3);


--
-- Data for Name: teacher_attendances; Type: TABLE DATA; Schema: public; Owner: negi
--

INSERT INTO public.teacher_attendances VALUES (13, '2024-10-08 05:30:00+05:30', 'present', NULL, '47417291-ca1e-4fac-bfca-6d724a523ba9');
INSERT INTO public.teacher_attendances VALUES (8, '2024-10-08 05:30:00+05:30', 'present', NULL, '3a34d8ef-6dcc-4849-ad02-aeffb227f79c');
INSERT INTO public.teacher_attendances VALUES (10, '2024-10-08 05:30:00+05:30', 'present', NULL, 'ea9c56e4-6baf-466d-935d-3dad8b362054');
INSERT INTO public.teacher_attendances VALUES (36, '2024-10-08 05:30:00+05:30', 'present', NULL, '504f467f-a901-42e0-8149-ab54363178ff');
INSERT INTO public.teacher_attendances VALUES (2, '2024-10-08 05:30:00+05:30', 'absent', NULL, '2bcc6ad8-6eb7-489f-95da-4849b7c5b8b0');
INSERT INTO public.teacher_attendances VALUES (3, '2024-10-08 05:30:00+05:30', 'absent', NULL, '2cfa46d7-0100-47ff-a102-aefa7a647c07');
INSERT INTO public.teacher_attendances VALUES (4, '2024-10-08 05:30:00+05:30', 'present', NULL, '74129ce2-d2fe-408d-a815-95c00b2703d5');
INSERT INTO public.teacher_attendances VALUES (11, '2024-10-08 05:30:00+05:30', 'present', NULL, 'c254ae7a-f55a-4877-a277-d8d836e097f9');
INSERT INTO public.teacher_attendances VALUES (5, '2024-10-08 05:30:00+05:30', 'absent', NULL, 'd6d8c21d-1841-4f92-aa85-e264c27fbd6f');
INSERT INTO public.teacher_attendances VALUES (6, '2024-10-08 05:30:00+05:30', 'absent', NULL, '86c6c87e-c1c2-4f5e-b38e-c79babb7a25a');
INSERT INTO public.teacher_attendances VALUES (1, '2024-10-08 05:30:00+05:30', 'present', NULL, '2df22e5d-ac50-4a37-b2d8-28a3d8fef965');
INSERT INTO public.teacher_attendances VALUES (38, '2024-10-08 05:30:00+05:30', 'present', NULL, '300053b5-c81b-41fd-b8a1-45ecad6ea277');
INSERT INTO public.teacher_attendances VALUES (9, '2024-10-08 05:30:00+05:30', 'present', NULL, '6a983437-2ef8-487b-80f6-b37823a757fa');
INSERT INTO public.teacher_attendances VALUES (12, '2024-10-08 05:30:00+05:30', 'absent', NULL, 'a3aa5a20-ac3e-413a-87ab-2e86cff94084');
INSERT INTO public.teacher_attendances VALUES (21, '2024-10-08 05:30:00+05:30', 'present', NULL, 'b9419862-6eab-47ca-93c9-99cf96a87b83');
INSERT INTO public.teacher_attendances VALUES (7, '2024-10-08 05:30:00+05:30', 'present', NULL, 'f00f910f-bc14-4035-a7d4-b2ba98b8d066');


--
-- Data for Name: teacher_subjects; Type: TABLE DATA; Schema: public; Owner: negi
--

INSERT INTO public.teacher_subjects VALUES ('6a983437-2ef8-487b-80f6-b37823a757fa', 1);
INSERT INTO public.teacher_subjects VALUES ('ea9c56e4-6baf-466d-935d-3dad8b362054', 2);
INSERT INTO public.teacher_subjects VALUES ('2bcc6ad8-6eb7-489f-95da-4849b7c5b8b0', 2);
INSERT INTO public.teacher_subjects VALUES ('2cfa46d7-0100-47ff-a102-aefa7a647c07', 1);
INSERT INTO public.teacher_subjects VALUES ('74129ce2-d2fe-408d-a815-95c00b2703d5', 3);
INSERT INTO public.teacher_subjects VALUES ('c254ae7a-f55a-4877-a277-d8d836e097f9', 3);
INSERT INTO public.teacher_subjects VALUES ('504f467f-a901-42e0-8149-ab54363178ff', 4);
INSERT INTO public.teacher_subjects VALUES ('a3aa5a20-ac3e-413a-87ab-2e86cff94084', 1);
INSERT INTO public.teacher_subjects VALUES ('d6d8c21d-1841-4f92-aa85-e264c27fbd6f', 1);
INSERT INTO public.teacher_subjects VALUES ('b9419862-6eab-47ca-93c9-99cf96a87b83', 2);
INSERT INTO public.teacher_subjects VALUES ('86c6c87e-c1c2-4f5e-b38e-c79babb7a25a', 2);
INSERT INTO public.teacher_subjects VALUES ('f00f910f-bc14-4035-a7d4-b2ba98b8d066', 1);
INSERT INTO public.teacher_subjects VALUES ('3a34d8ef-6dcc-4849-ad02-aeffb227f79c', 1);
INSERT INTO public.teacher_subjects VALUES ('2df22e5d-ac50-4a37-b2d8-28a3d8fef965', 5);
INSERT INTO public.teacher_subjects VALUES ('300053b5-c81b-41fd-b8a1-45ecad6ea277', 4);
INSERT INTO public.teacher_subjects VALUES ('47417291-ca1e-4fac-bfca-6d724a523ba9', 2);


--
-- Name: academic_years_id_seq; Type: SEQUENCE SET; Schema: public; Owner: negi
--

SELECT pg_catalog.setval('public.academic_years_id_seq', 4, true);


--
-- Name: classes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: negi
--

SELECT pg_catalog.setval('public.classes_id_seq', 64, true);


--
-- Name: departments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: negi
--

SELECT pg_catalog.setval('public.departments_id_seq', 28, true);


--
-- Name: events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: negi
--

SELECT pg_catalog.setval('public.events_id_seq', 128, true);


--
-- Name: exams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: negi
--

SELECT pg_catalog.setval('public.exams_id_seq', 24, true);


--
-- Name: fee_payments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: negi
--

SELECT pg_catalog.setval('public.fee_payments_id_seq', 64, true);


--
-- Name: fee_structures_id_seq; Type: SEQUENCE SET; Schema: public; Owner: negi
--

SELECT pg_catalog.setval('public.fee_structures_id_seq', 64, true);


--
-- Name: student_attendances_id_seq; Type: SEQUENCE SET; Schema: public; Owner: negi
--

SELECT pg_catalog.setval('public.student_attendances_id_seq', 64, true);


--
-- Name: subjects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: negi
--

SELECT pg_catalog.setval('public.subjects_id_seq', 36, true);


--
-- Name: tasks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: negi
--

SELECT pg_catalog.setval('public.tasks_id_seq', 60, true);


--
-- Name: teacher_attendances_id_seq; Type: SEQUENCE SET; Schema: public; Owner: negi
--

SELECT pg_catalog.setval('public.teacher_attendances_id_seq', 52, true);


--
-- PostgreSQL database dump complete
--

\unrestrict TvfmJRbBGaq2vhBD7zvgW0HnWsUVruEKLNS4AQbv8aTZi51Dhwc7RXeaNVFE2HY

