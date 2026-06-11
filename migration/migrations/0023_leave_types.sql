-- Migration for leave_types table derived from leave-types.json
SET session_replication_role = 'replica';

CREATE TABLE IF NOT EXISTS public.leave_types (
    "id" TEXT PRIMARY KEY,
    "leave_name" TEXT,
    "leave_unit" TEXT,
    "type" TEXT,
    "status" TEXT,
    "note" TEXT,
    "duration" INTEGER,
    "created_by" TEXT,
    "carry_over" TEXT,
    "notification_period" TEXT,
    "max_leaves" INTEGER,
    "annual_limit" INTEGER
);

INSERT INTO public.leave_types ("id", "leave_name", "leave_unit", "type", "status", "note", "duration", "created_by", "carry_over", "notification_period", "max_leaves", "annual_limit") VALUES ('001', 'Work From Home Leave', 'Days', 'Paid', 'Deactive', 'Winged lights seed don''t to him. Be day fish whose had that it him sea bearing abundantly greater.', 5, 'HR Department', 'Allowed up to 2 days.', '48 hours prior.', 10, 15) ON CONFLICT DO NOTHING;
INSERT INTO public.leave_types ("id", "leave_name", "leave_unit", "type", "status", "note", "duration", "created_by", "carry_over", "notification_period", "max_leaves", "annual_limit") VALUES ('002', 'Casual Leave', 'Hours', 'Unpaid', 'Active', 'Winged lights seed don''t to him. Be day fish whose had that it him sea bearing abundantly greater.', 8, 'HR Department', 'Not allowed.', '24 hours prior.', 12, 30) ON CONFLICT DO NOTHING;
INSERT INTO public.leave_types ("id", "leave_name", "leave_unit", "type", "status", "note", "duration", "created_by", "carry_over", "notification_period", "max_leaves", "annual_limit") VALUES ('003', 'Emergency Leave', 'Days', 'Unpaid', 'Active', 'Winged lights seed don''t to him. Be day fish whose had that it him sea bearing abundantly greater.', 3, 'HR Department', 'Allowed up to 1 day.', 'Immediate.', 5, 10) ON CONFLICT DO NOTHING;
INSERT INTO public.leave_types ("id", "leave_name", "leave_unit", "type", "status", "note", "duration", "created_by", "carry_over", "notification_period", "max_leaves", "annual_limit") VALUES ('004', 'Family Leave', 'Hours', 'Unpaid', 'Deactive', 'Winged lights seed don''t to him. Be day fish whose had that it him sea bearing abundantly greater.', 12, 'HR Department', 'Not allowed.', '48 hours prior.', 6, 15) ON CONFLICT DO NOTHING;
INSERT INTO public.leave_types ("id", "leave_name", "leave_unit", "type", "status", "note", "duration", "created_by", "carry_over", "notification_period", "max_leaves", "annual_limit") VALUES ('005', 'Sick Leave', 'Days', 'Unpaid', 'Active', 'Winged lights seed don''t to him. Be day fish whose had that it him sea bearing abundantly greater.', 10, 'HR Department', 'Allowed up to 5 days.', '48 hours prior.', 15, 20) ON CONFLICT DO NOTHING;
INSERT INTO public.leave_types ("id", "leave_name", "leave_unit", "type", "status", "note", "duration", "created_by", "carry_over", "notification_period", "max_leaves", "annual_limit") VALUES ('006', 'Casual Leave', 'Days', 'Unpaid', 'Active', 'Winged lights seed don''t to him. Be day fish whose had that it him sea bearing abundantly greater.', 8, 'HR Department', 'Not allowed.', '24 hours prior.', 12, 30) ON CONFLICT DO NOTHING;
INSERT INTO public.leave_types ("id", "leave_name", "leave_unit", "type", "status", "note", "duration", "created_by", "carry_over", "notification_period", "max_leaves", "annual_limit") VALUES ('007', 'Maternity Leave', 'Days', 'Paid', 'Deactive', 'Winged lights seed don''t to him. Be day fish whose had that it him sea bearing abundantly greater.', 90, 'HR Department', 'Allowed up to 10 days.', '1 month prior.', 1, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.leave_types ("id", "leave_name", "leave_unit", "type", "status", "note", "duration", "created_by", "carry_over", "notification_period", "max_leaves", "annual_limit") VALUES ('008', 'Sick Leave', 'Days', 'Unpaid', 'Active', 'Winged lights seed don''t to him. Be day fish whose had that it him sea bearing abundantly greater.', 10, 'HR Department', 'Allowed up to 5 days.', '48 hours prior.', 15, 20) ON CONFLICT DO NOTHING;
INSERT INTO public.leave_types ("id", "leave_name", "leave_unit", "type", "status", "note", "duration", "created_by", "carry_over", "notification_period", "max_leaves", "annual_limit") VALUES ('009', 'Sick Leave', 'Days', 'Unpaid', 'Active', 'Winged lights seed don''t to him. Be day fish whose had that it him sea bearing abundantly greater.', 10, 'HR Department', 'Allowed up to 5 days.', '48 hours prior.', 15, 20) ON CONFLICT DO NOTHING;
INSERT INTO public.leave_types ("id", "leave_name", "leave_unit", "type", "status", "note", "duration", "created_by", "carry_over", "notification_period", "max_leaves", "annual_limit") VALUES ('010', 'Casual Leave', 'Days', 'Unpaid', 'Active', 'Winged lights seed don''t to him. Be day fish whose had that it him sea bearing abundantly greater.', 8, 'HR Department', 'Not allowed.', '24 hours prior.', 12, 30) ON CONFLICT DO NOTHING;
INSERT INTO public.leave_types ("id", "leave_name", "leave_unit", "type", "status", "note", "duration", "created_by", "carry_over", "notification_period", "max_leaves", "annual_limit") VALUES ('011', 'Casual Leave', 'Days', 'Unpaid', 'Active', 'Winged lights seed don''t to him. Be day fish whose had that it him sea bearing abundantly greater.', 8, 'HR Department', 'Not allowed.', '24 hours prior.', 12, 30) ON CONFLICT DO NOTHING;
INSERT INTO public.leave_types ("id", "leave_name", "leave_unit", "type", "status", "note", "duration", "created_by", "carry_over", "notification_period", "max_leaves", "annual_limit") VALUES ('012', 'Emergency Leave', 'Days', 'Unpaid', 'Active', 'Winged lights seed don''t to him. Be day fish whose had that it him sea bearing abundantly greater.', 3, 'HR Department', 'Allowed up to 1 day.', 'Immediate.', 5, 10) ON CONFLICT DO NOTHING;
INSERT INTO public.leave_types ("id", "leave_name", "leave_unit", "type", "status", "note", "duration", "created_by", "carry_over", "notification_period", "max_leaves", "annual_limit") VALUES ('013', 'Work From Home Leave', 'Days', 'Paid', 'Deactive', 'Winged lights seed don''t to him. Be day fish whose had that it him sea bearing abundantly greater.', 5, 'HR Department', 'Allowed up to 2 days.', '48 hours prior.', 10, 15) ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';