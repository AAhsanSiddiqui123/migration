-- Revert: schemas/dashboard_permissions_public/tables/app_permission_defaults/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_permissions_public".app_permission_defaults;
COMMIT;  

