-- Revert schemas/dashboard_public/tables/question_template_language_variations/alterations/alter_table_add_error_text from pg

BEGIN;

ALTER TABLE dashboard_public.question_template_language_variations
    DROP COLUMN error_text;

COMMIT;
