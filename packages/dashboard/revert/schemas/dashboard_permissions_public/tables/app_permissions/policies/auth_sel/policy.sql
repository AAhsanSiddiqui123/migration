-- Revert: schemas/dashboard_permissions_public/tables/app_permissions/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_permissions_public".app_permissions;
COMMIT;  

