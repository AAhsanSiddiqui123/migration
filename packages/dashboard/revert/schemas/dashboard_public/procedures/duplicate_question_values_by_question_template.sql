-- Revert schemas/dashboard_public/procedures/duplicate_question_values_by_question_template from pg

BEGIN;

DROP FUNCTION dashboard_public.duplicate_question_values_by_question_template;

COMMIT;
