-- Revert: schemas/dashboard_public/tables/organization_profile_variations/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".organization_profile_variations;
COMMIT;  

