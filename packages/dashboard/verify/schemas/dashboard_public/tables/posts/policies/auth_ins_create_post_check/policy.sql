-- Verify: schemas/dashboard_public/tables/posts/policies/auth_ins_create_post_check/policy on pg

BEGIN;
SELECT verify_policy('auth_ins_create_post_check', 'dashboard_public.posts');
COMMIT;  

