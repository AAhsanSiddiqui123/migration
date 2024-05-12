-- Verify: schemas/dashboard_public/tables/post_comments/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.post_comments');
COMMIT;  

