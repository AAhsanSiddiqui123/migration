-- Revert: schemas/dashboard_permissions_public/tables/app_permissions/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_permissions_public".app_permissions;
COMMIT;  

