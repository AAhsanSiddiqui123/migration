-- Revert: schemas/dashboard_permissions_public/tables/membership_permission_defaults/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_permissions_public".membership_permission_defaults;
COMMIT;  

