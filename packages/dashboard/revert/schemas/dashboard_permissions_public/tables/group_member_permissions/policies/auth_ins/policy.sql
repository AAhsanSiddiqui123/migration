-- Revert: schemas/dashboard_permissions_public/tables/group_member_permissions/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "dashboard_permissions_public".group_member_permissions;
COMMIT;  

