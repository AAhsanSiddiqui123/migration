-- Verify: schemas/dashboard_public/tables/user_saved_actions/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.user_saved_actions');
COMMIT;  

