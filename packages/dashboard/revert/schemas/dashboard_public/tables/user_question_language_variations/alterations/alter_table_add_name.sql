-- Revert schemas/dashboard_public/tables/user_question_language_variations/alterations/alter_table_add_name from pg

BEGIN;

ALTER TABLE dashboard_public.user_question_language_variations
    DROP COLUMN name;

COMMIT;
