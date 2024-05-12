-- Verify: schemas/dashboard_public/tables/user_answers/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.user_answers');
COMMIT;  

