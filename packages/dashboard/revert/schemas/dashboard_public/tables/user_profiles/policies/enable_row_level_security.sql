-- Revert: schemas/dashboard_public/tables/user_profiles/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".user_profiles
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

