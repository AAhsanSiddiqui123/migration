-- Verify: schemas/dashboard_public/tables/question_templates/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.question_templates');
COMMIT;  

