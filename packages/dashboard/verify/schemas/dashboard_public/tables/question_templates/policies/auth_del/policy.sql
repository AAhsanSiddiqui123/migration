-- Verify: schemas/dashboard_public/tables/question_templates/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.question_templates');
COMMIT;  

