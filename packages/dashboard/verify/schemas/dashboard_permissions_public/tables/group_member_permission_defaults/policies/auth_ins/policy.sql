-- Verify: schemas/dashboard_permissions_public/tables/group_member_permission_defaults/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_permissions_public.group_member_permission_defaults');
COMMIT;  

