-- Verify: schemas/dashboard_memberships_public/tables/group_memberships/policies/auth_del_delete_own/policy on pg

BEGIN;
SELECT verify_policy('auth_del_delete_own', 'dashboard_memberships_public.group_memberships');
COMMIT;  

