-- Revert schemas/dashboard_public/tables/question_templates/alterations/alter_table_add_error_text from pg

BEGIN;

ALTER TABLE dashboard_public.question_templates
    DROP COLUMN error_text;

COMMIT;
