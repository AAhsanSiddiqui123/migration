-- Verify: schemas/dashboard_public/tables/posts/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.posts');
COMMIT;  

