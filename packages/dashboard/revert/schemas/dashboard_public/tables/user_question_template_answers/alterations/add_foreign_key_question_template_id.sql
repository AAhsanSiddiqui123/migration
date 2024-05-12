-- Revert schemas/dashboard_public/tables/user_question_template_answers/alterations/add_foreign_key_question_template_id from pg

BEGIN;

ALTER TABLE dashboard_public.user_question_template_answers
    DROP CONSTRAINT fk_user_question_template_answers_question_template_id;

COMMIT;
