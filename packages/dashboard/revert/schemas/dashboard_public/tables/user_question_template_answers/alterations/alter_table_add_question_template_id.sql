-- Revert schemas/dashboard_public/tables/user_question_template_answers/alterations/alter_table_add_question_template_id from pg

BEGIN;

ALTER TABLE dashboard_public.user_question_template_answers
    DROP COLUMN question_template_id;

COMMIT;
