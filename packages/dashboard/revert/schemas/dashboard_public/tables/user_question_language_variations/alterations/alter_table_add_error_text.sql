-- Revert schemas/dashboard_public/tables/user_question_language_variations/alterations/alter_table_add_error_text from pg

BEGIN;

ALTER TABLE dashboard_public.user_question_language_variations
    DROP COLUMN error_text;

COMMIT;
