-- Revert: schemas/dashboard_permissions_public/tables/membership_permissions/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_permissions_public".membership_permissions;
COMMIT;  

