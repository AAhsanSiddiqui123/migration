-- Revert: schemas/dashboard_public/tables/organization_profile_variations/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".organization_profile_variations;
COMMIT;  

