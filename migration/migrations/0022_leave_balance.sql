-- Migration for leave_balance table derived from leave-balance.json
SET session_replication_role = 'replica';

CREATE TABLE IF NOT EXISTS public.leave_balance (
    "id" TEXT PRIMARY KEY,
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

INSERT INTO public.leave_balance ("id", "img", "name", "prev", "current", "total", "used", "accepted", "rejected", "expired", "carry_over") VALUES ('001', 'assets/images/user/user1.jpg', 'John Deo', '10', '15', '25', '15', '10', '2', '5', '5') ON CONFLICT DO NOTHING;
INSERT INTO public.leave_balance ("id", "img", "name", "prev", "current", "total", "used", "accepted", "rejected", "expired", "carry_over") VALUES ('002', 'assets/images/user/user2.jpg', 'Sarah Smith', '10', '15', '25', '15', '10', '2', '5', '5') ON CONFLICT DO NOTHING;
INSERT INTO public.leave_balance ("id", "img", "name", "prev", "current", "total", "used", "accepted", "rejected", "expired", "carry_over") VALUES ('003', 'assets/images/user/user3.jpg', 'Edna Gilbert', '10', '15', '25', '15', '10', '2', '5', '5') ON CONFLICT DO NOTHING;
INSERT INTO public.leave_balance ("id", "img", "name", "prev", "current", "total", "used", "accepted", "rejected", "expired", "carry_over") VALUES ('004', 'assets/images/user/user4.jpg', 'Shelia Osterberg', '10', '15', '25', '15', '10', '2', '5', '5') ON CONFLICT DO NOTHING;
INSERT INTO public.leave_balance ("id", "img", "name", "prev", "current", "total", "used", "accepted", "rejected", "expired", "carry_over") VALUES ('005', 'assets/images/user/user5.jpg', 'Barbara Garland', '10', '15', '25', '15', '10', '2', '5', '5') ON CONFLICT DO NOTHING;
INSERT INTO public.leave_balance ("id", "img", "name", "prev", "current", "total", "used", "accepted", "rejected", "expired", "carry_over") VALUES ('006', 'assets/images/user/user6.jpg', 'Sarah Smith', '10', '15', '25', '15', '10', '2', '5', '5') ON CONFLICT DO NOTHING;
INSERT INTO public.leave_balance ("id", "img", "name", "prev", "current", "total", "used", "accepted", "rejected", "expired", "carry_over") VALUES ('007', 'assets/images/user/user7.jpg', 'Marie Brodsky', '10', '15', '25', '15', '10', '2', '5', '5') ON CONFLICT DO NOTHING;
INSERT INTO public.leave_balance ("id", "img", "name", "prev", "current", "total", "used", "accepted", "rejected", "expired", "carry_over") VALUES ('008', 'assets/images/user/user8.jpg', 'Kara Thompson', '10', '15', '25', '15', '10', '2', '5', '5') ON CONFLICT DO NOTHING;
INSERT INTO public.leave_balance ("id", "img", "name", "prev", "current", "total", "used", "accepted", "rejected", "expired", "carry_over") VALUES ('009', 'assets/images/user/user9.jpg', 'Joseph Nye', '10', '15', '25', '15', '10', '2', '5', '5') ON CONFLICT DO NOTHING;
INSERT INTO public.leave_balance ("id", "img", "name", "prev", "current", "total", "used", "accepted", "rejected", "expired", "carry_over") VALUES ('010', 'assets/images/user/user10.jpg', 'Ricardo Wendler', '10', '15', '25', '15', '10', '2', '5', '5') ON CONFLICT DO NOTHING;
INSERT INTO public.leave_balance ("id", "img", "name", "prev", "current", "total", "used", "accepted", "rejected", "expired", "carry_over") VALUES ('011', 'assets/images/user/user1.jpg', 'Brian Shelley', '10', '15', '25', '15', '10', '2', '5', '5') ON CONFLICT DO NOTHING;
INSERT INTO public.leave_balance ("id", "img", "name", "prev", "current", "total", "used", "accepted", "rejected", "expired", "carry_over") VALUES ('012', 'assets/images/user/user2.jpg', 'Theresa Bullock', '10', '15', '25', '15', '10', '2', '5', '5') ON CONFLICT DO NOTHING;
INSERT INTO public.leave_balance ("id", "img", "name", "prev", "current", "total", "used", "accepted", "rejected", "expired", "carry_over") VALUES ('013', 'assets/images/user/user3.jpg', 'Jeannie Elder', '10', '15', '25', '15', '10', '2', '5', '5') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';