-- Revert: schemas/dashboard_public/tables/organization_profiles/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_public".organization_profiles;
COMMIT;  

