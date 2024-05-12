-- Verify: schemas/dashboard_public/tables/action_questions/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_public.action_questions');
COMMIT;  

