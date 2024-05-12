-- Verify: schemas/dashboard_public/tables/goals/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.goals');
COMMIT;  

