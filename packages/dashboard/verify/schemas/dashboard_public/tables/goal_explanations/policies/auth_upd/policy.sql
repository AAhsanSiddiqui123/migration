-- Verify: schemas/dashboard_public/tables/goal_explanations/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.goal_explanations');
COMMIT;  

