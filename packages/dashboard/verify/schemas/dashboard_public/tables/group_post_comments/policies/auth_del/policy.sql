-- Verify: schemas/dashboard_public/tables/group_post_comments/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.group_post_comments');
COMMIT;  

