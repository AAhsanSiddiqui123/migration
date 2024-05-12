-- Revert: schemas/dashboard_permissions_public/tables/membership_permissions/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_permissions_public".membership_permissions;
COMMIT;  

