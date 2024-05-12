-- Verify: schemas/dashboard_public/tables/post_comments/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.post_comments');
COMMIT;  

