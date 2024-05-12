-- Verify: schemas/dashboard_public/tables/goal_explanations/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.goal_explanations');
COMMIT;  

