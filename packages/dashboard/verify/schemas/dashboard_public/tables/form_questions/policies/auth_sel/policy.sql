-- Verify: schemas/dashboard_public/tables/form_questions/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_public.form_questions');
COMMIT;  

