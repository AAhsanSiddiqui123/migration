-- Revert schemas/dashboard_public/tables/form_question_language_variations/table from pg

BEGIN;

DROP TABLE dashboard_public.form_question_language_variations;

COMMIT;
