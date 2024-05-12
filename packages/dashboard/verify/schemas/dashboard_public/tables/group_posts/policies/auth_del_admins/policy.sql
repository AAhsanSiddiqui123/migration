-- Verify: schemas/dashboard_public/tables/group_posts/policies/auth_del_admins/policy on pg

BEGIN;
SELECT verify_policy('auth_del_admins', 'dashboard_public.group_posts');
COMMIT;  

