-- Revert: schemas/dashboard_public/tables/organization_profiles/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".organization_profiles
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

