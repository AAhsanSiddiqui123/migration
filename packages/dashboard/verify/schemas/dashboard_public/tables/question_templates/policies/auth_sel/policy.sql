-- Verify: schemas/dashboard_public/tables/question_templates/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_public.question_templates');
COMMIT;  

