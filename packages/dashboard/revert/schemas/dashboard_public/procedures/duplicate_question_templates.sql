-- Revert schemas/dashboard_public/procedures/duplicate_question_templates from pg

BEGIN;

DROP FUNCTION dashboard_public.duplicate_question_templates;

COMMIT;
