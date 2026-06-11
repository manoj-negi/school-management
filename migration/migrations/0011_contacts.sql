-- Migration for contacts table derived from contacts.json
SET session_replication_role = 'replica';

CREATE TABLE IF NOT EXISTS public.contacts (
    "id" TEXT PRIMARY KEY,
    "img" TEXT,
    "name" TEXT,
    "email" TEXT,
    "mobile" TEXT,
    "birth_date" TIMESTAMP,
    "address" TEXT,
    "note" TEXT
);

INSERT INTO public.contacts ("id", "img", "name", "email", "mobile", "birth_date", "address", "note") VALUES ('001', 'assets/images/user/user1.jpg', 'John Deo', 'test@email.com', '1234567890', '2018-02-25T14:22:18Z', 'God creature is sixth was abundantly and sea gathered i ', 'Fowl darkness our sixth heaven. In image lights fourth a hath don''t Abundantly they''re, image you''re . God creature is sixth was abundantly and sea gathered i the two let upon days.

Very make fly saying light don''t. Forth, replenish likeness.') ON CONFLICT DO NOTHING;
INSERT INTO public.contacts ("id", "img", "name", "email", "mobile", "birth_date", "address", "note") VALUES ('002', 'assets/images/user/user2.jpg', 'Sarah Smith', 'test@email.com', '1234567890', '1985-04-14T14:22:18Z', 'Celeste Slater 606-3727 Ullamcorper. Street Roseville NH 11523', 'Winged lights seed don''t to him. Be day fish whose had that it him sea bearing abundantly greater. Behold midst had.

Beginning whose man that earth, their can''t first after which, isn''t. Day from the.Self Promotion :)') ON CONFLICT DO NOTHING;
INSERT INTO public.contacts ("id", "img", "name", "email", "mobile", "birth_date", "address", "note") VALUES ('003', 'assets/images/user/user3.jpg', 'Edna Gilbert', 'test@email.com', '1234567890', '1983-11-08T14:22:18Z', 'Hiroko Potter P.O. Box 887 2508 Dolor. Av. Muskegon KY 12482', 'Gathering above day. Air Heaven beast multiply us together. Signs every fowl said shall forth. Made fruit without signs fill good. Bring two morning place Own.

God there his dry beginning waters own you wherein kind she''d abundantly, deep. Abundantly.') ON CONFLICT DO NOTHING;
INSERT INTO public.contacts ("id", "img", "name", "email", "mobile", "birth_date", "address", "note") VALUES ('004', 'assets/images/user/user4.jpg', 'Shelia Osterberg', 'test@email.com', '1234567890', '1988-05-20T14:22:18Z', '881 Beechwood St.Beloit, WI 53511', 'Why does the tested dust ray the featured rubbish? The stereo incentive malfunctions across the eligible gossip. 

Her sober receiver sections a cuddly afternoon. A mobile outline multiplies against the attribute. Why can''t the realizing instinct triumph? The owner abides.') ON CONFLICT DO NOTHING;
INSERT INTO public.contacts ("id", "img", "name", "email", "mobile", "birth_date", "address", "note") VALUES ('005', 'assets/images/user/user5.jpg', 'Barbara Garland', 'test@email.com', '1234567890', '1987-04-18T14:22:18Z', '107 Ashley Ave Lakewood, New Jersey', 'The friendship beams in this dedicate smoker. The lark yawns! A diet fasts outside the sail. Each infrastructure interferes with each snobbery. The lung scratches the likelihood.') ON CONFLICT DO NOTHING;
INSERT INTO public.contacts ("id", "img", "name", "email", "mobile", "birth_date", "address", "note") VALUES ('006', 'assets/images/user/user6.jpg', 'Sarah Smith', 'test@email.com', '1234567890', '1983-11-08T14:22:18Z', 'Shanti Nagar Bldg No B 4, Sector No 6, Mira Road', 'The glass relaxes in a buffer. Any larger bitmap parades. The socialist succeeds throughout the pizza. The explicit tag retracts a merging postcard. A pool aborts behind the intellect!') ON CONFLICT DO NOTHING;
INSERT INTO public.contacts ("id", "img", "name", "email", "mobile", "birth_date", "address", "note") VALUES ('007', 'assets/images/user/user7.jpg', 'Marie Brodsky', 'test@email.com', '1234567890', '1983-11-08T14:22:18Z', 'D-178/2, Ttc Industrial Area, Midc, Nerul', 'Behind whatever mist stumbles the unknown colleague. Will the event mother the store network? 

An asynchronous abandon beefs the primitive satellite. The hazard parses an insulting participant. How can the sailing inventor caution within the microprocessor? How does a strain horn the condemning telescope?') ON CONFLICT DO NOTHING;
INSERT INTO public.contacts ("id", "img", "name", "email", "mobile", "birth_date", "address", "note") VALUES ('008', 'assets/images/user/user8.jpg', 'Kara Thompson', 'test@email.com', '1234567890', '1987-04-18T14:22:18Z', 'H-6, 1st Fl., Omkar, Near Marathi Vidhiyalaya,', 'The west influences the scarlet lord. How can the hindsight awake a needless substitute? The cluster prefers another gratuitous terror. The humane viewer fails against a particle. The digest brushes against the mum bog.') ON CONFLICT DO NOTHING;
INSERT INTO public.contacts ("id", "img", "name", "email", "mobile", "birth_date", "address", "note") VALUES ('009', 'assets/images/user/user9.jpg', 'Joseph Nye', 'test@email.com', '1234567890', '1988-05-20T14:22:18Z', '26, 2nd Flr, Nariman Bhavan, Nariman Point', 'An elect leg bays. A dustbin gasps the bug. The populace suggests a longer dependence. An intimate possesses its deaf photocopy throughout the appearance.') ON CONFLICT DO NOTHING;
INSERT INTO public.contacts ("id", "img", "name", "email", "mobile", "birth_date", "address", "note") VALUES ('010', 'assets/images/user/user10.jpg', 'Ricardo Wendler', 'test@email.com', '1234567890', '1985-04-14T14:22:18Z', '1st Floor P.o. Box No 3261, 39 Nagdevi Street,', 'Gathering above day. Air Heaven beast multiply us together. Signs every fowl said shall forth. Made fruit without signs fill good. Bring two morning place Own.

God there his dry beginning waters own you wherein kind she''d abundantly, deep. Abundantly.') ON CONFLICT DO NOTHING;
INSERT INTO public.contacts ("id", "img", "name", "email", "mobile", "birth_date", "address", "note") VALUES ('011', 'assets/images/user/user1.jpg', 'Brian Shelley', 'test@email.com', '1234567890', '1983-11-08T14:22:18Z', 'Shop 4, Shanti Darshan, Opp Veena Hotel, Stn Rd,', 'The assumed seed fringes a decay. The skill watches the miserable separator. A dip bicycles beside a guidance! Why does the burning concept laugh?') ON CONFLICT DO NOTHING;
INSERT INTO public.contacts ("id", "img", "name", "email", "mobile", "birth_date", "address", "note") VALUES ('012', 'assets/images/user/user2.jpg', 'Theresa Bullock', 'test@email.com', '1234567890', '1988-05-20T14:22:18Z', 'Mogra Village Road, J B Nagar, Andheri (west)', 'How can the twisting century dare a sure fluid? The bullet evaluates the initial purchase. A disregard fiddles over the cosy shorthand. 

Every populace redirects a twelve pain. An evolutionary eyesight lusts throughout an earlier axiom. A bananas melody camps on top of a bloody terrorist.') ON CONFLICT DO NOTHING;
INSERT INTO public.contacts ("id", "img", "name", "email", "mobile", "birth_date", "address", "note") VALUES ('013', 'assets/images/user/user3.jpg', 'Jeannie Elder', 'test@email.com', '1234567890', '1987-04-18T14:22:18Z', 'Plot 129, D 1, Swami Vivekanand Nagar', 'Any microwave conducts a convict tree. The lip moans before an ozone. Any gateway interests my nearest rhyme. A client apologizes for a bias. The traveled camera bores every eight dash.') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';