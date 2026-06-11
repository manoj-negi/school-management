-- Migration for task table derived from task.json
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.task (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "img" TEXT,
    "name" TEXT,
    "title" TEXT,
    "done" BOOLEAN,
    "note" TEXT,
    "priority" TEXT,
    "due_date" TIMESTAMP
);
INSERT INTO public.task ("id", "img", "name", "title", "done", "note", "priority", "due_date") VALUES ('eba71675-b4c3-3ec8-9e93-65bb63278c59', 'assets/images/user/user1.jpg', 'Sarah Smith', 'Develop angular project', true, 'note details', 'High', '2018-02-25T14:22:18Z') ON CONFLICT DO NOTHING;
INSERT INTO public.task ("id", "img", "name", "title", "done", "note", "priority", "due_date") VALUES ('f1403169-56be-3c44-a06b-2ab4a0148af7', 'assets/images/user/user2.jpg', 'John Deo', 'File not found exception solve', false, 'note details', 'High', '2018-02-25T14:22:18Z') ON CONFLICT DO NOTHING;
INSERT INTO public.task ("id", "img", "name", "title", "done", "note", "priority", "due_date") VALUES ('14c5d8f3-a4d2-30c4-884c-b10f1bd31a69', 'assets/images/user/user3.jpg', 'Jens Brincker', 'Test project and find bug', false, 'note details', 'Low', '2018-02-25T14:22:18Z') ON CONFLICT DO NOTHING;
INSERT INTO public.task ("id", "img", "name", "title", "done", "note", "priority", "due_date") VALUES ('af769d9a-d405-3f14-9dad-25786f653c88', 'assets/images/user/user4.jpg', 'Mark Hay', 'Image not found error', true, 'note details', 'Normal', '2018-02-25T14:22:18Z') ON CONFLICT DO NOTHING;
INSERT INTO public.task ("id", "img", "name", "title", "done", "note", "priority", "due_date") VALUES ('f03b193f-eecb-3a4f-adc6-01c73c8801b3', 'assets/images/user/user5.jpg', 'Anthony Davie', 'Solve client error in form', false, 'note details', 'High', '2018-02-25T14:22:18Z') ON CONFLICT DO NOTHING;
INSERT INTO public.task ("id", "img", "name", "title", "done", "note", "priority", "due_date") VALUES ('ae15e611-191e-366c-9619-94d1b93eaf62', 'assets/images/user/user6.jpg', 'Sue Woodger', 'Tab button is flickering on hover', false, 'note details', 'Normal', '2018-02-25T14:22:18Z') ON CONFLICT DO NOTHING;
INSERT INTO public.task ("id", "img", "name", "title", "done", "note", "priority", "due_date") VALUES ('b7e7ea35-e0dd-332c-b5f1-b8b5ea5b3cd4', 'assets/images/user/user7.jpg', 'John Deo', 'Chart responsive issue solve', true, 'note details', 'High', '2018-02-25T14:22:18Z') ON CONFLICT DO NOTHING;
INSERT INTO public.task ("id", "img", "name", "title", "done", "note", "priority", "due_date") VALUES ('83cdb6b9-8c26-3c34-a29d-795937497183', 'assets/images/user/user8.jpg', 'Jens Brincker', 'Web service data load issue', false, 'note details', 'High', '2018-02-25T14:22:18Z') ON CONFLICT DO NOTHING;
INSERT INTO public.task ("id", "img", "name", "title", "done", "note", "priority", "due_date") VALUES ('bbc1140c-2889-35ca-a663-d9a90721670e', 'assets/images/user/user9.jpg', 'Sarah Smith', 'Java compile error', false, 'note details', 'Low', '2018-02-25T14:22:18Z') ON CONFLICT DO NOTHING;
INSERT INTO public.task ("id", "img", "name", "title", "done", "note", "priority", "due_date") VALUES ('75a53ebf-6583-3198-a597-a5284010a175', 'assets/images/user/user10.jpg', 'Mark Hay', 'Integrate project with spring boot', true, 'note details', 'High', '2018-02-25T14:22:18Z') ON CONFLICT DO NOTHING;
INSERT INTO public.task ("id", "img", "name", "title", "done", "note", "priority", "due_date") VALUES ('a45f28ff-fa20-3884-a05a-d852f73fe6c2', 'assets/images/user/user1.jpg', 'John Deo', 'Update latest angular version', false, 'note details', 'High', '2018-02-25T14:22:18Z') ON CONFLICT DO NOTHING;
INSERT INTO public.task ("id", "img", "name", "title", "done", "note", "priority", "due_date") VALUES ('15969d07-024c-33df-915d-46192ca0eeb2', 'assets/images/user/user2.jpg', 'Jens Brincker', 'Integrate lazy loading on project', false, 'note details', 'Normal', '2018-02-25T14:22:18Z') ON CONFLICT DO NOTHING;
INSERT INTO public.task ("id", "img", "name", "title", "done", "note", "priority", "due_date") VALUES ('2ae0845b-e2a6-3adc-adf8-0005d725ff0a', 'assets/images/user/user3.jpg', 'Mark Hay', 'js file not load properly', true, 'note details', 'Normal', '2018-02-25T14:22:18Z') ON CONFLICT DO NOTHING;
INSERT INTO public.task ("id", "img", "name", "title", "done", "note", "priority", "due_date") VALUES ('dd7db151-5988-355e-bc52-fc9850aea3ae', 'assets/images/user/user4.jpg', 'Anthony Davie', 'need to change color of table', false, 'note details', 'Normal', '2018-02-25T14:22:18Z') ON CONFLICT DO NOTHING;
INSERT INTO public.task ("id", "img", "name", "title", "done", "note", "priority", "due_date") VALUES ('c5c953b7-8bac-382f-af0a-293a24ea1805', 'assets/images/user/user5.jpg', 'Sue Woodger', 'modal window select item issue', false, 'note details', 'Low', '2018-02-25T14:22:18Z') ON CONFLICT DO NOTHING;
SET session_replication_role = 'origin';
