-- Revert: schemas/dashboard_public/tables/organization_profile_variations/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_public".organization_profile_variations;
COMMIT;  

