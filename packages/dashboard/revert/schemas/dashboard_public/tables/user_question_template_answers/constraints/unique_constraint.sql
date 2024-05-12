-- Revert dashboard:schemas/dashboard_public/tables/user_question_template_answers/constraints/unique_constraint from pg

BEGIN;
ALTER TABLE dashboard_public.user_question_template_answers
    DROP CONSTRAINT user_question_template_answers_userid_templateid_key;

COMMIT;
