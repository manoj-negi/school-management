-- Migration for calendar table derived from calendar.json
SET session_replication_role = 'replica';

CREATE TABLE IF NOT EXISTS public.calendar (
    "id" TEXT PRIMARY KEY,
    "title" TEXT,
    "start" TEXT,
    "end" TEXT,
    "class_name" TEXT,
    "group_id" TEXT,
    "details" TEXT,
    "all_day" BOOLEAN
);

INSERT INTO public.calendar ("id", "title", "start", "end", "class_name", "group_id", "details", "all_day") VALUES ('event1', 'All Day Event', '2025-01-05T18:30:00.000Z', '2025-01-06T18:29:00.000Z', 'fc-event-success', 'work', 'Her extensive perceived may any sincerity extremity. Indeed add rather may pretty see.', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.calendar ("id", "title", "start", "end", "class_name", "group_id", "details", "all_day") VALUES ('event2', 'Break', '2025-02-09T10:30:00.000Z', '2025-02-10T14:30:00.000Z', 'fc-event-primary', 'important', 'Her extensive perceived may any sincerity extremity. Indeed add rather may pretty see. ', false) ON CONFLICT DO NOTHING;
INSERT INTO public.calendar ("id", "title", "start", "end", "class_name", "group_id", "details", "all_day") VALUES ('event3', 'Shopping', '2025-01-15T06:30:00.000Z', '2025-01-15T14:30:00.000Z', 'fc-event-warning', 'personal', 'Her extensive perceived may any sincerity extremity. Indeed add rather may pretty see. ', false) ON CONFLICT DO NOTHING;
INSERT INTO public.calendar ("id", "title", "start", "end", "class_name", "group_id", "details", "all_day") VALUES ('event4', 'Meeting', '2025-01-25T05:00:00.000Z', '2025-01-27T14:30:00.000Z', 'fc-event-success', 'work', 'Her extensive perceived may any sincerity extremity. Indeed add rather may pretty see.', false) ON CONFLICT DO NOTHING;
INSERT INTO public.calendar ("id", "title", "start", "end", "class_name", "group_id", "details", "all_day") VALUES ('event5', 'Lunch', '2025-03-11T05:30:00.000Z', '2025-03-11T08:30:00.000Z', 'fc-event-primary', 'important', 'Her extensive perceived may any sincerity extremity. Indeed add rather may pretty see.', false) ON CONFLICT DO NOTHING;
INSERT INTO public.calendar ("id", "title", "start", "end", "class_name", "group_id", "details", "all_day") VALUES ('event6', 'Meeting', '2025-03-13T07:00:00.000Z', '2025-03-13T09:00:00.000Z', 'fc-event-success', 'work', 'Her extensive perceived may any sincerity extremity. Indeed add rather may pretty see.', false) ON CONFLICT DO NOTHING;
INSERT INTO public.calendar ("id", "title", "start", "end", "class_name", "group_id", "details", "all_day") VALUES ('event7', 'Birthday Party', '2025-04-28T13:30:00.000Z', '2025-04-28T14:00:00.000Z', 'fc-event-warning', 'personal', 'Her extensive perceived may any sincerity extremity. Indeed add rather may pretty see.', false) ON CONFLICT DO NOTHING;
INSERT INTO public.calendar ("id", "title", "start", "end", "class_name", "group_id", "details", "all_day") VALUES ('event8', 'Go to Delhi', '2025-05-06T04:30:00.000Z', '2025-05-07T05:00:00.000Z', 'fc-event-danger', 'travel', 'Her extensive perceived may any sincerity extremity. Indeed add rather may pretty see.', false) ON CONFLICT DO NOTHING;
INSERT INTO public.calendar ("id", "title", "start", "end", "class_name", "group_id", "details", "all_day") VALUES ('event9', 'Get To Gather', '2025-05-17T04:30:00.000Z', '2025-05-18T05:00:00.000Z', 'fc-event-info', 'friends', 'Her extensive perceived may any sincerity extremity. Indeed add rather may pretty see.', false) ON CONFLICT DO NOTHING;
INSERT INTO public.calendar ("id", "title", "start", "end", "class_name", "group_id", "details", "all_day") VALUES ('event10', 'Collage Party', '2025-02-01T04:30:00.000Z', '2025-02-01T05:00:00.000Z', 'fc-event-info', 'friends', 'Her extensive perceived may any sincerity extremity. Indeed add rather may pretty see.', false) ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';