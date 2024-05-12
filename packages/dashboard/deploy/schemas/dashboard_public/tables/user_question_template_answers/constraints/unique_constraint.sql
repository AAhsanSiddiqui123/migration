-- Deploy dashboard:schemas/dashboard_public/tables/user_question_template_answers/constraints/unique_constraint to pg

BEGIN;

ALTER TABLE IF EXISTS dashboard_public.user_question_template_answers
    ADD CONSTRAINT user_question_template_answers_userid_templateid_key UNIQUE (user_id, question_template_id);

COMMIT;
