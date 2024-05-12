-- Revert schemas/dashboard_public/procedures/duplicate_question_templates_language_variations from pg

BEGIN;

DROP FUNCTION dashboard_public.duplicate_question_templates_language_variations;

COMMIT;
