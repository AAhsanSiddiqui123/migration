-- Revert: schemas/dashboard_public/tables/organization_profiles/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_public".organization_profiles;
COMMIT;  

