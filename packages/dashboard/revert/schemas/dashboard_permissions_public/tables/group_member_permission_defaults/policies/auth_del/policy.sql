-- Revert: schemas/dashboard_permissions_public/tables/group_member_permission_defaults/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_permissions_public".group_member_permission_defaults;
COMMIT;  

