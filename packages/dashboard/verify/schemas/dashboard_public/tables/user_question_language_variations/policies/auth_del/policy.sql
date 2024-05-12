-- Verify: schemas/dashboard_public/tables/user_question_language_variations/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.user_question_language_variations');
COMMIT;  

