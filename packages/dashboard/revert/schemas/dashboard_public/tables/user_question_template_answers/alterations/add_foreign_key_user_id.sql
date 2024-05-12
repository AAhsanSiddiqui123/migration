-- Revert schemas/dashboard_public/tables/user_question_template_answers/alterations/add_foreign_key_user_id from pg

BEGIN;

ALTER TABLE dashboard_public.user_question_template_answers
    DROP CONSTRAINT fk_dashboard_public_user_question_template_answers_user_id;

COMMIT;
