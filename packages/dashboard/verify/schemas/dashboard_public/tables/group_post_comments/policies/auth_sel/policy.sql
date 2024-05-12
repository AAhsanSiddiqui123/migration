-- Verify: schemas/dashboard_public/tables/group_post_comments/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_public.group_post_comments');
COMMIT;  

