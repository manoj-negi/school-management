-- Migration for task table derived from task.json
SET session_replication_role = 'replica';

CREATE TABLE IF NOT EXISTS public.task (
    "id" TEXT PRIMARY KEY,
    "img" TEXT,
    "name" TEXT,
    "title" TEXT,
    "done" BOOLEAN,
    "note" TEXT,
    "priority" TEXT,
    "due_date" TIMESTAMP
);

INSERT INTO public.task ("id", "img", "name", "title", "done", "note", "priority", "due_date") VALUES ('1', 'assets/images/user/user1.jpg', 'Sarah Smith', 'Develop angular project', true, 'note details', 'High', '2018-02-25T14:22:18Z') ON CONFLICT DO NOTHING;
INSERT INTO public.task ("id", "img", "name", "title", "done", "note", "priority", "due_date") VALUES ('2', 'assets/images/user/user2.jpg', 'John Deo', 'File not found exception solve', false, 'note details', 'High', '2018-02-25T14:22:18Z') ON CONFLICT DO NOTHING;
INSERT INTO public.task ("id", "img", "name", "title", "done", "note", "priority", "due_date") VALUES ('3', 'assets/images/user/user3.jpg', 'Jens Brincker', 'Test project and find bug', false, 'note details', 'Low', '2018-02-25T14:22:18Z') ON CONFLICT DO NOTHING;
INSERT INTO public.task ("id", "img", "name", "title", "done", "note", "priority", "due_date") VALUES ('4', 'assets/images/user/user4.jpg', 'Mark Hay', 'Image not found error', true, 'note details', 'Normal', '2018-02-25T14:22:18Z') ON CONFLICT DO NOTHING;
INSERT INTO public.task ("id", "img", "name", "title", "done", "note", "priority", "due_date") VALUES ('5', 'assets/images/user/user5.jpg', 'Anthony Davie', 'Solve client error in form', false, 'note details', 'High', '2018-02-25T14:22:18Z') ON CONFLICT DO NOTHING;
INSERT INTO public.task ("id", "img", "name", "title", "done", "note", "priority", "due_date") VALUES ('6', 'assets/images/user/user6.jpg', 'Sue Woodger', 'Tab button is flickering on hover', false, 'note details', 'Normal', '2018-02-25T14:22:18Z') ON CONFLICT DO NOTHING;
INSERT INTO public.task ("id", "img", "name", "title", "done", "note", "priority", "due_date") VALUES ('7', 'assets/images/user/user7.jpg', 'John Deo', 'Chart responsive issue solve', true, 'note details', 'High', '2018-02-25T14:22:18Z') ON CONFLICT DO NOTHING;
INSERT INTO public.task ("id", "img", "name", "title", "done", "note", "priority", "due_date") VALUES ('8', 'assets/images/user/user8.jpg', 'Jens Brincker', 'Web service data load issue', false, 'note details', 'High', '2018-02-25T14:22:18Z') ON CONFLICT DO NOTHING;
INSERT INTO public.task ("id", "img", "name", "title", "done", "note", "priority", "due_date") VALUES ('9', 'assets/images/user/user9.jpg', 'Sarah Smith', 'Java compile error', false, 'note details', 'Low', '2018-02-25T14:22:18Z') ON CONFLICT DO NOTHING;
INSERT INTO public.task ("id", "img", "name", "title", "done", "note", "priority", "due_date") VALUES ('10', 'assets/images/user/user10.jpg', 'Mark Hay', 'Integrate project with spring boot', true, 'note details', 'High', '2018-02-25T14:22:18Z') ON CONFLICT DO NOTHING;
INSERT INTO public.task ("id", "img", "name", "title", "done", "note", "priority", "due_date") VALUES ('11', 'assets/images/user/user1.jpg', 'John Deo', 'Update latest angular version', false, 'note details', 'High', '2018-02-25T14:22:18Z') ON CONFLICT DO NOTHING;
INSERT INTO public.task ("id", "img", "name", "title", "done", "note", "priority", "due_date") VALUES ('12', 'assets/images/user/user2.jpg', 'Jens Brincker', 'Integrate lazy loading on project', false, 'note details', 'Normal', '2018-02-25T14:22:18Z') ON CONFLICT DO NOTHING;
INSERT INTO public.task ("id", "img", "name", "title", "done", "note", "priority", "due_date") VALUES ('13', 'assets/images/user/user3.jpg', 'Mark Hay', 'js file not load properly', true, 'note details', 'Normal', '2018-02-25T14:22:18Z') ON CONFLICT DO NOTHING;
INSERT INTO public.task ("id", "img", "name", "title", "done", "note", "priority", "due_date") VALUES ('14', 'assets/images/user/user4.jpg', 'Anthony Davie', 'need to change color of table', false, 'note details', 'Normal', '2018-02-25T14:22:18Z') ON CONFLICT DO NOTHING;
INSERT INTO public.task ("id", "img", "name", "title", "done", "note", "priority", "due_date") VALUES ('15', 'assets/images/user/user5.jpg', 'Sue Woodger', 'modal window select item issue', false, 'note details', 'Low', '2018-02-25T14:22:18Z') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';