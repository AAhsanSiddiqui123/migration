-- Verify: schemas/dashboard_public/tables/question_values/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.question_values');
COMMIT;  

