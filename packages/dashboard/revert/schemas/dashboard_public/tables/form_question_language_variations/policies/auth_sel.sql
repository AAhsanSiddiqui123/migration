-- Revert schemas/dashboard_public/tables/form_question_language_variations/policies/auth_sel from pg

BEGIN;



DROP POLICY auth_sel ON dashboard_public.form_question_language_variations;

COMMIT;
