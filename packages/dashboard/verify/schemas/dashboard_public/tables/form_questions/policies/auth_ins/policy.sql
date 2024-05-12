-- Verify: schemas/dashboard_public/tables/form_questions/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.form_questions');
COMMIT;  

