-- Verify: schemas/dashboard_public/tables/post_comments/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_public.post_comments');
COMMIT;  

