-- Verify: schemas/dashboard_public/tables/form_questions/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.form_questions');
COMMIT;  

