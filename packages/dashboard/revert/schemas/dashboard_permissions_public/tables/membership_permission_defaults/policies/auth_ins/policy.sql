-- Revert: schemas/dashboard_permissions_public/tables/membership_permission_defaults/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_permissions_public".membership_permission_defaults;
COMMIT;  

