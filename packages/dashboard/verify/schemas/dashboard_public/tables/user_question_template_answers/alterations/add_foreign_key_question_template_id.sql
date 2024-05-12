-- Verify schemas/dashboard_public/tables/user_question_template_answers/alterations/add_foreign_key_question_template_id  on pg

BEGIN;

SELECT verify_constraint('dashboard_public.user_question_template_answers', 'fk_user_question_template_answers_question_template_id');

ROLLBACK;
