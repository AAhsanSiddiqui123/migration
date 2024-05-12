-- Verify: schemas/dashboard_public/tables/question_value_language_variations/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.question_value_language_variations');
COMMIT;  

