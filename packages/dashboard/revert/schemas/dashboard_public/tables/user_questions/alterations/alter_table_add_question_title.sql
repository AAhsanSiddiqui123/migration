-- Revert schemas/dashboard_public/tables/user_questions/alterations/alter_table_add_question_title from pg

BEGIN;

ALTER TABLE dashboard_public.user_questions
    DROP COLUMN question_title;

COMMIT;
