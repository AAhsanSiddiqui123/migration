-- Verify: schemas/dashboard_public/tables/group_posts/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_public.group_posts');
COMMIT;  

