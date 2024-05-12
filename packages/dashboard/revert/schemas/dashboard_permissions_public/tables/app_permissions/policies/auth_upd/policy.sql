-- Revert: schemas/dashboard_permissions_public/tables/app_permissions/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_permissions_public".app_permissions;
COMMIT;  

