-- Revert schemas/dashboard_public/tables/user_questions/alterations/alter_table_add_button_text from pg

BEGIN;

ALTER TABLE dashboard_public.user_questions
    DROP COLUMN button_text;

COMMIT;
