-- Verify: schemas/dashboard_permissions_public/tables/group_member_permission_defaults/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_permissions_public.group_member_permission_defaults');
COMMIT;  

