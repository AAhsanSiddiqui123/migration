-- Verify: schemas/dashboard_public/tables/goals/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.goals');
COMMIT;  

