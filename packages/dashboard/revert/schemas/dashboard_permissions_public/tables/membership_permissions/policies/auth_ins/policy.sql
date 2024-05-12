-- Revert: schemas/dashboard_permissions_public/tables/membership_permissions/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_permissions_public".membership_permissions;
COMMIT;  

