-- =============================================================================
-- Migration 0119: Fix email uniqueness & complete unification of users table
-- =============================================================================
-- The previous migration failed because all seeded students/teachers share
-- test@email.com. This migration:
--   1. Drops the unique constraint on email (username is the primary login key)
--   2. Migrates all students and teachers into public.users
--   3. Uses username@school.dev as a unique generated email for each record
--   4. Drops old tables
-- =============================================================================

SET session_replication_role = 'replica';

-- ----------------------------------------------------------------
-- STEP 1: Drop unique constraint on email (username is the login key)
-- ----------------------------------------------------------------
ALTER TABLE public.users DROP CONSTRAINT IF EXISTS users_email_key;

-- ----------------------------------------------------------------
-- STEP 2: Clean any partial records from the previous failed migration
--         (keep only the 3 original admin/teacher/student accounts)
-- ----------------------------------------------------------------
DELETE FROM public.users WHERE role = 'student' AND username != 'student';
DELETE FROM public.users WHERE role = 'teacher' AND username != 'teacher';

-- ----------------------------------------------------------------
-- STEP 3: Migrate ALL students → public.users
--   Username = sanitized_name + '_s' + roll_no  (guaranteed unique because roll_no is unique)
--   Email    = username@school.dev
--   Password = bcrypt hash of 'School@123'
-- ----------------------------------------------------------------
INSERT INTO public.users (
  id, username, email, password_hash, role, is_active,
  img, name, gender, mobile, department, address, status,
  roll_no, date_of_birth, enrollment_date, graduation_year,
  parent_guardian_name, parent_guardian_mobile,
  profile_completion_status, scholarship_status
)
SELECT
  s.id,
  LOWER(REGEXP_REPLACE(s.name, '[^a-zA-Z0-9]+', '_', 'g')) || '_s' || s.roll_no AS username,
  LOWER(REGEXP_REPLACE(s.name, '[^a-zA-Z0-9]+', '_', 'g')) || '_s' || s.roll_no || '@school.dev' AS email,
  '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LPVKsEjY9Jy',  -- School@123
  'student', true,
  s.img, s.name, s.gender, s.mobile, s.department, s.address,
  COALESCE(s.status, 'active'),
  s.roll_no, s.date_of_birth, s.enrollment_date, s.graduation_year,
  s.parent_guardian_name, s.parent_guardian_mobile,
  COALESCE(s.profile_completion_status, 'complete'),
  COALESCE(s.scholarship_status, 'none')
FROM public.students s
ON CONFLICT (username) DO UPDATE SET
  img                       = EXCLUDED.img,
  name                      = EXCLUDED.name,
  gender                    = EXCLUDED.gender,
  mobile                    = EXCLUDED.mobile,
  department                = EXCLUDED.department,
  address                   = EXCLUDED.address,
  status                    = EXCLUDED.status,
  roll_no                   = EXCLUDED.roll_no,
  date_of_birth             = EXCLUDED.date_of_birth,
  enrollment_date           = EXCLUDED.enrollment_date,
  graduation_year           = EXCLUDED.graduation_year,
  parent_guardian_name      = EXCLUDED.parent_guardian_name,
  parent_guardian_mobile    = EXCLUDED.parent_guardian_mobile,
  profile_completion_status = EXCLUDED.profile_completion_status,
  scholarship_status        = EXCLUDED.scholarship_status;

-- ----------------------------------------------------------------
-- STEP 4: Migrate ALL teachers → public.users
--   Username = sanitized_name + '_t' + row_number (unique per duplicated names)
--   Email    = username@school.dev
-- ----------------------------------------------------------------
INSERT INTO public.users (
  id, username, email, password_hash, role, is_active,
  img, name, gender, mobile, department, address, status,
  degree, hire_date, salary, subject_specialization,
  experience_years, birthdate, bio
)
SELECT
  t.id,
  LOWER(REGEXP_REPLACE(t.name, '[^a-zA-Z0-9]+', '_', 'g')) || '_t' ||
    ROW_NUMBER() OVER (PARTITION BY LOWER(REGEXP_REPLACE(t.name, '[^a-zA-Z0-9]+', '_', 'g')) ORDER BY t.id) AS username,
  LOWER(REGEXP_REPLACE(t.name, '[^a-zA-Z0-9]+', '_', 'g')) || '_t' ||
    ROW_NUMBER() OVER (PARTITION BY LOWER(REGEXP_REPLACE(t.name, '[^a-zA-Z0-9]+', '_', 'g')) ORDER BY t.id) || '@school.dev' AS email,
  '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LPVKsEjY9Jy',  -- School@123
  'teacher', true,
  t.img, t.name, t.gender, t.mobile, t.department, t.address,
  COALESCE(t.status, 'active'),
  t.degree, t.hire_date, t.salary, t.subject_specialization,
  t.experience_years, t.birthdate, t.bio
FROM public.teachers t
ON CONFLICT (username) DO UPDATE SET
  img                    = EXCLUDED.img,
  name                   = EXCLUDED.name,
  gender                 = EXCLUDED.gender,
  mobile                 = EXCLUDED.mobile,
  department             = EXCLUDED.department,
  address                = EXCLUDED.address,
  status                 = EXCLUDED.status,
  degree                 = EXCLUDED.degree,
  hire_date              = EXCLUDED.hire_date,
  salary                 = EXCLUDED.salary,
  subject_specialization = EXCLUDED.subject_specialization,
  experience_years       = EXCLUDED.experience_years,
  birthdate              = EXCLUDED.birthdate,
  bio                    = EXCLUDED.bio;

-- ----------------------------------------------------------------
-- STEP 5: Update original admin/teacher/student with display names
-- ----------------------------------------------------------------
UPDATE public.users SET name = 'Administrator' WHERE username = 'admin';
UPDATE public.users SET name = 'Default Teacher', department = 'General' WHERE username = 'teacher';
UPDATE public.users SET name = 'Default Student', roll_no = '0' WHERE username = 'student';

-- ----------------------------------------------------------------
-- STEP 6: Drop old separate tables
-- ----------------------------------------------------------------
DROP TABLE IF EXISTS public.students;
DROP TABLE IF EXISTS public.teachers;

SET session_replication_role = 'origin';
