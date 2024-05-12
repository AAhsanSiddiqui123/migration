-- Verify: schemas/dashboard_public/tables/goal_explanations/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.goal_explanations');
COMMIT;  

