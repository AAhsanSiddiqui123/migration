-- Verify: schemas/dashboard_public/tables/question_template_language_variations/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.question_template_language_variations');
COMMIT;  

