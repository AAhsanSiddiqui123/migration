-- Revert: schemas/dashboard_public/tables/organization_profile_variations/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_public".organization_profile_variations
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

