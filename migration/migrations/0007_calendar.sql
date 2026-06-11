-- Migration for calendar table derived from calendar.json
SET session_replication_role = 'replica';
CREATE TABLE IF NOT EXISTS public.calendar (
    "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "title" TEXT,
    "start" TEXT,
    "end" TEXT,
    "class_name" TEXT,
    "group_id" UUID,
    "details" TEXT,
    "all_day" BOOLEAN
);
INSERT INTO public.calendar ("id", "title", "start", "end", "class_name", "group_id", "details", "all_day") VALUES ('e8253c25-8c66-3d72-ba9d-26a50bbdac70', 'All Day Event', '2025-01-05T18:30:00.000Z', '2025-01-06T18:29:00.000Z', 'fc-event-success', 'e9fa337e-b27a-3e37-87c3-90992877897d', 'Her extensive perceived may any sincerity extremity. Indeed add rather may pretty see.', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.calendar ("id", "title", "start", "end", "class_name", "group_id", "details", "all_day") VALUES ('470bbc71-922c-3728-beac-087d7f0fd4f4', 'Break', '2025-02-09T10:30:00.000Z', '2025-02-10T14:30:00.000Z', 'fc-event-primary', '34b22097-5196-3cb5-9174-8a458655a614', 'Her extensive perceived may any sincerity extremity. Indeed add rather may pretty see. ', false) ON CONFLICT DO NOTHING;
INSERT INTO public.calendar ("id", "title", "start", "end", "class_name", "group_id", "details", "all_day") VALUES ('d2720d77-c46a-37dd-be8d-7cfed8bec1c0', 'Shopping', '2025-01-15T06:30:00.000Z', '2025-01-15T14:30:00.000Z', 'fc-event-warning', 'edada5d4-886f-37e5-8ff5-0df3909bd492', 'Her extensive perceived may any sincerity extremity. Indeed add rather may pretty see. ', false) ON CONFLICT DO NOTHING;
INSERT INTO public.calendar ("id", "title", "start", "end", "class_name", "group_id", "details", "all_day") VALUES ('c1e5cf82-b6af-3e4b-8e9e-57b99f8cbc6e', 'Meeting', '2025-01-25T05:00:00.000Z', '2025-01-27T14:30:00.000Z', 'fc-event-success', 'e9fa337e-b27a-3e37-87c3-90992877897d', 'Her extensive perceived may any sincerity extremity. Indeed add rather may pretty see.', false) ON CONFLICT DO NOTHING;
INSERT INTO public.calendar ("id", "title", "start", "end", "class_name", "group_id", "details", "all_day") VALUES ('ab4c7e53-8dd4-3a3d-8376-dda4202f088b', 'Lunch', '2025-03-11T05:30:00.000Z', '2025-03-11T08:30:00.000Z', 'fc-event-primary', '34b22097-5196-3cb5-9174-8a458655a614', 'Her extensive perceived may any sincerity extremity. Indeed add rather may pretty see.', false) ON CONFLICT DO NOTHING;
INSERT INTO public.calendar ("id", "title", "start", "end", "class_name", "group_id", "details", "all_day") VALUES ('15742278-b5e5-3013-8983-5ff40c873b5d', 'Meeting', '2025-03-13T07:00:00.000Z', '2025-03-13T09:00:00.000Z', 'fc-event-success', 'e9fa337e-b27a-3e37-87c3-90992877897d', 'Her extensive perceived may any sincerity extremity. Indeed add rather may pretty see.', false) ON CONFLICT DO NOTHING;
INSERT INTO public.calendar ("id", "title", "start", "end", "class_name", "group_id", "details", "all_day") VALUES ('40dbb14e-5176-3636-a879-6639c0773c0d', 'Birthday Party', '2025-04-28T13:30:00.000Z', '2025-04-28T14:00:00.000Z', 'fc-event-warning', 'edada5d4-886f-37e5-8ff5-0df3909bd492', 'Her extensive perceived may any sincerity extremity. Indeed add rather may pretty see.', false) ON CONFLICT DO NOTHING;
INSERT INTO public.calendar ("id", "title", "start", "end", "class_name", "group_id", "details", "all_day") VALUES ('9629ba21-02c1-3c3a-8890-9ee97cef74c4', 'Go to Delhi', '2025-05-06T04:30:00.000Z', '2025-05-07T05:00:00.000Z', 'fc-event-danger', 'a63a1a55-2919-3467-b1bf-c3cd84bcffde', 'Her extensive perceived may any sincerity extremity. Indeed add rather may pretty see.', false) ON CONFLICT DO NOTHING;
INSERT INTO public.calendar ("id", "title", "start", "end", "class_name", "group_id", "details", "all_day") VALUES ('176bad2b-a858-3664-b741-6de43abcc729', 'Get To Gather', '2025-05-17T04:30:00.000Z', '2025-05-18T05:00:00.000Z', 'fc-event-info', 'd113e096-c8f0-3297-a5c8-8e88d9a52020', 'Her extensive perceived may any sincerity extremity. Indeed add rather may pretty see.', false) ON CONFLICT DO NOTHING;
INSERT INTO public.calendar ("id", "title", "start", "end", "class_name", "group_id", "details", "all_day") VALUES ('f49a5ef7-bd00-383d-a47b-9d0e9e2e898f', 'Collage Party', '2025-02-01T04:30:00.000Z', '2025-02-01T05:00:00.000Z', 'fc-event-info', 'd113e096-c8f0-3297-a5c8-8e88d9a52020', 'Her extensive perceived may any sincerity extremity. Indeed add rather may pretty see.', false) ON CONFLICT DO NOTHING;
SET session_replication_role = 'origin';
