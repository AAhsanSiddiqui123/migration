-- Verify: schemas/dashboard_public/tables/group_post_comments/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.group_post_comments');
COMMIT;  

