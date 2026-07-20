-- =============================================================================
-- Migration 0118: Unify users, students, and teachers into a single users table
-- =============================================================================
-- Strategy:
--   1. Add all profile columns to public.users
--   2. Migrate public.students rows → public.users (role='student')
--   3. Migrate public.teachers rows → public.users (role='teacher')
--   4. Drop old tables
-- =============================================================================

SET session_replication_role = 'replica';

-- ----------------------------------------------------------------
-- STEP 1: Add common profile columns to public.users
-- ----------------------------------------------------------------
ALTER TABLE public.users
  ADD COLUMN IF NOT EXISTS img                     TEXT,
  ADD COLUMN IF NOT EXISTS name                    TEXT,
  ADD COLUMN IF NOT EXISTS gender                  TEXT,
  ADD COLUMN IF NOT EXISTS mobile                  TEXT,
  ADD COLUMN IF NOT EXISTS department              TEXT,
  ADD COLUMN IF NOT EXISTS address                 TEXT,
  ADD COLUMN IF NOT EXISTS status                  TEXT DEFAULT 'active',

  -- Teacher-specific (NULL for students/admins)
  ADD COLUMN IF NOT EXISTS degree                  TEXT,
  ADD COLUMN IF NOT EXISTS hire_date               TIMESTAMP,
  ADD COLUMN IF NOT EXISTS salary                  TEXT,
  ADD COLUMN IF NOT EXISTS subject_specialization  TEXT,
  ADD COLUMN IF NOT EXISTS experience_years        INTEGER,
  ADD COLUMN IF NOT EXISTS birthdate               TIMESTAMP,
  ADD COLUMN IF NOT EXISTS bio                     TEXT,

  -- Student-specific (NULL for teachers/admins)
  ADD COLUMN IF NOT EXISTS roll_no                 TEXT,
  ADD COLUMN IF NOT EXISTS date_of_birth           TIMESTAMP,
  ADD COLUMN IF NOT EXISTS enrollment_date         TIMESTAMP,
  ADD COLUMN IF NOT EXISTS graduation_year         TEXT,
  ADD COLUMN IF NOT EXISTS parent_guardian_name    TEXT,
  ADD COLUMN IF NOT EXISTS parent_guardian_mobile  TEXT,
  ADD COLUMN IF NOT EXISTS profile_completion_status TEXT DEFAULT 'complete',
  ADD COLUMN IF NOT EXISTS scholarship_status      TEXT DEFAULT 'none';

-- ----------------------------------------------------------------
-- STEP 2: Migrate students → users
-- Default password hash for 'School@123' (bcrypt cost 10)
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
  LOWER(REGEXP_REPLACE(s.name, '[^a-zA-Z0-9]', '_', 'g')) || '_s' || s.roll_no AS username,
  COALESCE(s.email, LOWER(REGEXP_REPLACE(s.name, '\s+', '.', 'g')) || '.s' || s.roll_no || '@school.dev'),
  '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LPVKsEjY9Jy', -- School@123
  'student',
  true,
  s.img, s.name, s.gender, s.mobile, s.department, s.address, s.status,
  s.roll_no, s.date_of_birth, s.enrollment_date, s.graduation_year,
  s.parent_guardian_name, s.parent_guardian_mobile,
  s.profile_completion_status, s.scholarship_status
FROM public.students s
ON CONFLICT (username) DO UPDATE SET
  img = EXCLUDED.img,
  name = EXCLUDED.name,
  gender = EXCLUDED.gender,
  mobile = EXCLUDED.mobile,
  department = EXCLUDED.department,
  address = EXCLUDED.address,
  status = EXCLUDED.status,
  roll_no = EXCLUDED.roll_no,
  date_of_birth = EXCLUDED.date_of_birth,
  enrollment_date = EXCLUDED.enrollment_date,
  graduation_year = EXCLUDED.graduation_year,
  parent_guardian_name = EXCLUDED.parent_guardian_name,
  parent_guardian_mobile = EXCLUDED.parent_guardian_mobile,
  profile_completion_status = EXCLUDED.profile_completion_status,
  scholarship_status = EXCLUDED.scholarship_status;

-- ----------------------------------------------------------------
-- STEP 3: Migrate teachers → users
-- ----------------------------------------------------------------
INSERT INTO public.users (
  id, username, email, password_hash, role, is_active,
  img, name, gender, mobile, department, address, status,
  degree, hire_date, salary, subject_specialization,
  experience_years, birthdate, bio
)
SELECT
  t.id,
  LOWER(REGEXP_REPLACE(t.name, '[^a-zA-Z0-9]', '_', 'g')) || '_t' || ROW_NUMBER() OVER (PARTITION BY LOWER(REGEXP_REPLACE(t.name, '[^a-zA-Z0-9]', '_', 'g')) ORDER BY t.id) AS username,
  COALESCE(t.email, LOWER(REGEXP_REPLACE(t.name, '\s+', '.', 'g')) || '_t' || ROW_NUMBER() OVER (PARTITION BY t.name ORDER BY t.id) || '@school.dev'),
  '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LPVKsEjY9Jy', -- School@123
  'teacher',
  true,
  t.img, t.name, t.gender, t.mobile, t.department, t.address, t.status,
  t.degree, t.hire_date, t.salary, t.subject_specialization,
  t.experience_years, t.birthdate, t.bio
FROM public.teachers t
ON CONFLICT (username) DO UPDATE SET
  img = EXCLUDED.img,
  name = EXCLUDED.name,
  gender = EXCLUDED.gender,
  mobile = EXCLUDED.mobile,
  department = EXCLUDED.department,
  address = EXCLUDED.address,
  status = EXCLUDED.status,
  degree = EXCLUDED.degree,
  hire_date = EXCLUDED.hire_date,
  salary = EXCLUDED.salary,
  subject_specialization = EXCLUDED.subject_specialization,
  experience_years = EXCLUDED.experience_years,
  birthdate = EXCLUDED.birthdate,
  bio = EXCLUDED.bio;

-- ----------------------------------------------------------------
-- STEP 4: Update admin user with profile info
-- ----------------------------------------------------------------
UPDATE public.users
SET name = 'Administrator', status = 'active'
WHERE role = 'admin';

-- ----------------------------------------------------------------
-- STEP 5: Drop old tables (data is now in users)
-- ----------------------------------------------------------------
DROP TABLE IF EXISTS public.students;
DROP TABLE IF EXISTS public.teachers;

SET session_replication_role = 'origin';
