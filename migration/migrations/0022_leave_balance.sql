-- Migration for leave_balance table derived from leave-balance.json
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.leave_balance (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "img" TEXT,
    "name" TEXT,
    "prev" TEXT,
    "current" TEXT,
    "total" TEXT,
    "used" TEXT,
    "accepted" TEXT,
    "rejected" TEXT,
    "expired" TEXT,
    "carry_over" TEXT
);
INSERT INTO public.leave_balance ("id", "img", "name", "prev", "current", "total", "used", "accepted", "rejected", "expired", "carry_over") VALUES ('41b4070d-cc5e-30c3-b6d2-fdc09538fad9', 'assets/images/user/user1.jpg', 'John Deo', '10', '15', '25', '15', '10', '2', '5', '5') ON CONFLICT DO NOTHING;
INSERT INTO public.leave_balance ("id", "img", "name", "prev", "current", "total", "used", "accepted", "rejected", "expired", "carry_over") VALUES ('9db43acb-4923-3859-ab9e-25ec4ce56784', 'assets/images/user/user2.jpg', 'Sarah Smith', '10', '15', '25', '15', '10', '2', '5', '5') ON CONFLICT DO NOTHING;
INSERT INTO public.leave_balance ("id", "img", "name", "prev", "current", "total", "used", "accepted", "rejected", "expired", "carry_over") VALUES ('f55c6d49-2fd0-3f14-80f2-106be45f5be3', 'assets/images/user/user3.jpg', 'Edna Gilbert', '10', '15', '25', '15', '10', '2', '5', '5') ON CONFLICT DO NOTHING;
INSERT INTO public.leave_balance ("id", "img", "name", "prev", "current", "total", "used", "accepted", "rejected", "expired", "carry_over") VALUES ('51cc56f9-9fe4-365b-8ebc-d6e88af70c3c', 'assets/images/user/user4.jpg', 'Shelia Osterberg', '10', '15', '25', '15', '10', '2', '5', '5') ON CONFLICT DO NOTHING;
INSERT INTO public.leave_balance ("id", "img", "name", "prev", "current", "total", "used", "accepted", "rejected", "expired", "carry_over") VALUES ('0f2f1a4f-3cd6-3e8d-b628-af2709d4a3ef', 'assets/images/user/user5.jpg', 'Barbara Garland', '10', '15', '25', '15', '10', '2', '5', '5') ON CONFLICT DO NOTHING;
INSERT INTO public.leave_balance ("id", "img", "name", "prev", "current", "total", "used", "accepted", "rejected", "expired", "carry_over") VALUES ('17eaaaeb-df2d-3c29-905f-a874be71f7ad', 'assets/images/user/user6.jpg', 'Sarah Smith', '10', '15', '25', '15', '10', '2', '5', '5') ON CONFLICT DO NOTHING;
INSERT INTO public.leave_balance ("id", "img", "name", "prev", "current", "total", "used", "accepted", "rejected", "expired", "carry_over") VALUES ('b0258385-887f-323a-b8b2-878ff0d8822e', 'assets/images/user/user7.jpg', 'Marie Brodsky', '10', '15', '25', '15', '10', '2', '5', '5') ON CONFLICT DO NOTHING;
INSERT INTO public.leave_balance ("id", "img", "name", "prev", "current", "total", "used", "accepted", "rejected", "expired", "carry_over") VALUES ('96081550-63ef-35a4-aa85-e842f7bc05ea', 'assets/images/user/user8.jpg', 'Kara Thompson', '10', '15', '25', '15', '10', '2', '5', '5') ON CONFLICT DO NOTHING;
INSERT INTO public.leave_balance ("id", "img", "name", "prev", "current", "total", "used", "accepted", "rejected", "expired", "carry_over") VALUES ('4e6383c1-0573-3682-8649-da44ca372375', 'assets/images/user/user9.jpg', 'Joseph Nye', '10', '15', '25', '15', '10', '2', '5', '5') ON CONFLICT DO NOTHING;
INSERT INTO public.leave_balance ("id", "img", "name", "prev", "current", "total", "used", "accepted", "rejected", "expired", "carry_over") VALUES ('6374297f-1eaa-3938-aeec-66f4bc5062f7', 'assets/images/user/user10.jpg', 'Ricardo Wendler', '10', '15', '25', '15', '10', '2', '5', '5') ON CONFLICT DO NOTHING;
INSERT INTO public.leave_balance ("id", "img", "name", "prev", "current", "total", "used", "accepted", "rejected", "expired", "carry_over") VALUES ('2801bbdc-20c6-348d-8d46-cb8fda1ce080', 'assets/images/user/user1.jpg', 'Brian Shelley', '10', '15', '25', '15', '10', '2', '5', '5') ON CONFLICT DO NOTHING;
INSERT INTO public.leave_balance ("id", "img", "name", "prev", "current", "total", "used", "accepted", "rejected", "expired", "carry_over") VALUES ('01763331-4d82-33fc-85a1-60edf54f777e', 'assets/images/user/user2.jpg', 'Theresa Bullock', '10', '15', '25', '15', '10', '2', '5', '5') ON CONFLICT DO NOTHING;
INSERT INTO public.leave_balance ("id", "img", "name", "prev", "current", "total", "used", "accepted", "rejected", "expired", "carry_over") VALUES ('6080fb24-e52f-308a-a790-03e5c88b5370', 'assets/images/user/user3.jpg', 'Jeannie Elder', '10', '15', '25', '15', '10', '2', '5', '5') ON CONFLICT DO NOTHING;
SET session_replication_role = 'origin';
