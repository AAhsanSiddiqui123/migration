-- Revert: schemas/dashboard_memberships_public/tables/app_admin_grants/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_memberships_public".app_admin_grants;
COMMIT;  

