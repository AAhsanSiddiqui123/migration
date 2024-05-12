-- Revert: schemas/dashboard_public/tables/organization_profile_variations/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_public".organization_profile_variations;
COMMIT;  

