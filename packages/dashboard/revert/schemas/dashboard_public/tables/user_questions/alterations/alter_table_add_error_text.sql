-- Revert schemas/dashboard_public/tables/user_questions/alterations/alter_table_add_error_text from pg

BEGIN;

ALTER TABLE dashboard_public.user_questions
    DROP COLUMN error_text;

COMMIT;
