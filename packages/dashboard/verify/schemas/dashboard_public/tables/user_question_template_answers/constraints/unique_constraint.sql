-- Verify dashboard:schemas/dashboard_public/tables/user_question_template_answers/constraints/unique_constraint on pg

BEGIN;

SELECT verify_constraint('dashboard_public.user_question_template_answers', 'user_question_template_answers_userid_templateid_key');

ROLLBACK;
