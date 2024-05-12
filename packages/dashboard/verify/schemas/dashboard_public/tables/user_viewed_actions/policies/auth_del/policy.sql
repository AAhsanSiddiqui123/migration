-- Verify: schemas/dashboard_public/tables/user_viewed_actions/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.user_viewed_actions');
COMMIT;  

