-- Verify: schemas/dashboard_public/tables/goals/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.goals');
COMMIT;  

