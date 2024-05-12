-- Revert: schemas/dashboard_permissions_public/tables/membership_permission_defaults/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_permissions_public".membership_permission_defaults;
COMMIT;  

