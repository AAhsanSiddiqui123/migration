-- Verify: schemas/dashboard_permissions_public/tables/group_member_permission_defaults/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_permissions_public.group_member_permission_defaults');
COMMIT;  

