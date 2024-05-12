-- Revert schemas/dashboard_public/tables/form_question_language_variations/policies/auth_upd from pg

BEGIN;



DROP POLICY auth_upd ON dashboard_public.form_question_language_variations;

COMMIT;
