-- Revert: schemas/dashboard_public/tables/organization_profiles/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_public".organization_profiles;
COMMIT;  

