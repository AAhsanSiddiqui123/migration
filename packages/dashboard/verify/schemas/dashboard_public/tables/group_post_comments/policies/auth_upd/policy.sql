-- Verify: schemas/dashboard_public/tables/group_post_comments/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.group_post_comments');
COMMIT;  

