-- Verify: schemas/dashboard_public/tables/group_post_comments/policies/auth_ins_create_post_comment_check/policy on pg

BEGIN;
SELECT verify_policy('auth_ins_create_post_comment_check', 'dashboard_public.group_post_comments');
COMMIT;  

