-- Revert schemas/dashboard_public/tables/user_question_template_answers/alterations/alter_table_add_answer from pg

BEGIN;

ALTER TABLE dashboard_public.user_question_template_answers
    DROP COLUMN answer;

COMMIT;
