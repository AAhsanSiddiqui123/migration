-- Revert: schemas/dashboard_memberships_public/tables/grants/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_memberships_public".grants;
COMMIT;  

