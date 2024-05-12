-- Revert schemas/dashboard_public/tables/user_question_language_variations/alterations/alter_table_add_question_title from pg

BEGIN;

ALTER TABLE dashboard_public.user_question_language_variations
    DROP COLUMN question_title;

COMMIT;
