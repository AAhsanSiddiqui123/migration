-- Verify: schemas/dashboard_public/tables/goals/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_public.goals');
COMMIT;  

