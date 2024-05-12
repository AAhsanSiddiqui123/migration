-- Verify: schemas/dashboard_public/tables/post_reactions/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.post_reactions');
COMMIT;  

