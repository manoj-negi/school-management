-- Migration for ngx_data table derived from ngx-data.json
SET session_replication_role = 'replica';

CREATE TABLE IF NOT EXISTS public.ngx_data (
    "first_name" TEXT,
    "last_name" TEXT,
    "gender" TEXT,
    "address" TEXT
);

INSERT INTO public.ngx_data ("first_name", "last_name", "gender", "address") VALUES ('Cortez', 'Gaines', 'male', '423 Bay Parkway') ON CONFLICT DO NOTHING;
INSERT INTO public.ngx_data ("first_name", "last_name", "gender", "address") VALUES ('Reba', 'Bowen', 'female', '663 Hale Avenue') ON CONFLICT DO NOTHING;
INSERT INTO public.ngx_data ("first_name", "last_name", "gender", "address") VALUES ('Wallace', 'Bush', 'male', '955 Lawn Court') ON CONFLICT DO NOTHING;
INSERT INTO public.ngx_data ("first_name", "last_name", "gender", "address") VALUES ('Angel', 'Dawson', 'female', '919 Lott Street') ON CONFLICT DO NOTHING;
INSERT INTO public.ngx_data ("first_name", "last_name", "gender", "address") VALUES ('Mclaughlin', 'Norton', 'male', '228 Kossuth Place') ON CONFLICT DO NOTHING;
INSERT INTO public.ngx_data ("first_name", "last_name", "gender", "address") VALUES ('Poole', 'Ware', 'male', '560 Gerald Court') ON CONFLICT DO NOTHING;
INSERT INTO public.ngx_data ("first_name", "last_name", "gender", "address") VALUES ('Howard', 'Mack', 'male', '887 George Street') ON CONFLICT DO NOTHING;
INSERT INTO public.ngx_data ("first_name", "last_name", "gender", "address") VALUES ('John', 'Hewitt', 'female', '494 Amber Street') ON CONFLICT DO NOTHING;
INSERT INTO public.ngx_data ("first_name", "last_name", "gender", "address") VALUES ('Flossie', 'Grimes', 'female', '436 Ridge Court') ON CONFLICT DO NOTHING;
INSERT INTO public.ngx_data ("first_name", "last_name", "gender", "address") VALUES ('Donaldson', 'Johnston', 'male', '553 Albemarle Road') ON CONFLICT DO NOTHING;
INSERT INTO public.ngx_data ("first_name", "last_name", "gender", "address") VALUES ('Angie', 'Stewart', 'female', '785 Juliana Place') ON CONFLICT DO NOTHING;
INSERT INTO public.ngx_data ("first_name", "last_name", "gender", "address") VALUES ('Hancock', 'Kennedy', 'male', '981 Remsen Street') ON CONFLICT DO NOTHING;
INSERT INTO public.ngx_data ("first_name", "last_name", "gender", "address") VALUES ('Simmons', 'Tucker', 'male', '100 Battery Avenue') ON CONFLICT DO NOTHING;
INSERT INTO public.ngx_data ("first_name", "last_name", "gender", "address") VALUES ('Fletcher', 'Garza', 'male', '401 Pineapple Street') ON CONFLICT DO NOTHING;
INSERT INTO public.ngx_data ("first_name", "last_name", "gender", "address") VALUES ('Hicks', 'Ferguson', 'male', '262 Ocean Avenue') ON CONFLICT DO NOTHING;
INSERT INTO public.ngx_data ("first_name", "last_name", "gender", "address") VALUES ('Snyder', 'Bullock', 'male', '474 Sedgwick Place') ON CONFLICT DO NOTHING;
INSERT INTO public.ngx_data ("first_name", "last_name", "gender", "address") VALUES ('Mckay', 'Hays', 'male', '624 Wythe Avenue') ON CONFLICT DO NOTHING;
INSERT INTO public.ngx_data ("first_name", "last_name", "gender", "address") VALUES ('Margaret', 'Riley', 'female', '721 Debevoise Street') ON CONFLICT DO NOTHING;
INSERT INTO public.ngx_data ("first_name", "last_name", "gender", "address") VALUES ('Christy', 'Rogers', 'female', '615 Nassau Avenue') ON CONFLICT DO NOTHING;
INSERT INTO public.ngx_data ("first_name", "last_name", "gender", "address") VALUES ('Graciela', 'Duran', 'female', '118 Havemeyer Street') ON CONFLICT DO NOTHING;
INSERT INTO public.ngx_data ("first_name", "last_name", "gender", "address") VALUES ('Mann', 'Charles', 'male', '127 Charles Place') ON CONFLICT DO NOTHING;
INSERT INTO public.ngx_data ("first_name", "last_name", "gender", "address") VALUES ('Adams', 'Hardy', 'male', '163 Hawthorne Street') ON CONFLICT DO NOTHING;
INSERT INTO public.ngx_data ("first_name", "last_name", "gender", "address") VALUES ('Daisy', 'Benton', 'female', '135 Aurelia Court') ON CONFLICT DO NOTHING;
INSERT INTO public.ngx_data ("first_name", "last_name", "gender", "address") VALUES ('Richmond', 'Payne', 'male', '759 Bayard Street') ON CONFLICT DO NOTHING;
INSERT INTO public.ngx_data ("first_name", "last_name", "gender", "address") VALUES ('Dejesus', 'Clayton', 'male', '312 Stewart Street') ON CONFLICT DO NOTHING;
INSERT INTO public.ngx_data ("first_name", "last_name", "gender", "address") VALUES ('Giles', 'Sullivan', 'male', '741 Underhill Avenue') ON CONFLICT DO NOTHING;
INSERT INTO public.ngx_data ("first_name", "last_name", "gender", "address") VALUES ('Donovan', 'Boone', 'male', '124 Grattan Street') ON CONFLICT DO NOTHING;
INSERT INTO public.ngx_data ("first_name", "last_name", "gender", "address") VALUES ('Imelda', 'Baird', 'female', '487 Dahlgreen Place') ON CONFLICT DO NOTHING;

SET session_replication_role = 'origin';