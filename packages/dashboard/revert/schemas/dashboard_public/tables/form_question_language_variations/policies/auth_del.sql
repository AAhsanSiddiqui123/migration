-- Revert schemas/dashboard_public/tables/form_question_language_variations/policies/auth_del from pg

BEGIN;



DROP POLICY auth_del ON dashboard_public.form_question_language_variations;

COMMIT;
