-- Verify: schemas/dashboard_public/tables/group_posts/policies/auth_ins_create_post_check/policy on pg

BEGIN;
SELECT verify_policy('auth_ins_create_post_check', 'dashboard_public.group_posts');
COMMIT;  

