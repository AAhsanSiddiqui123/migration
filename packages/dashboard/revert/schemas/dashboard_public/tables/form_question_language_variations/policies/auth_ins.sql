-- Revert schemas/dashboard_public/tables/form_question_language_variations/policies/auth_ins from pg

BEGIN;



DROP POLICY auth_ins ON dashboard_public.form_question_language_variations;

COMMIT;
