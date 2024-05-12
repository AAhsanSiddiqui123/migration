-- Verify: schemas/dashboard_public/tables/group_posts/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.group_posts');
COMMIT;  

