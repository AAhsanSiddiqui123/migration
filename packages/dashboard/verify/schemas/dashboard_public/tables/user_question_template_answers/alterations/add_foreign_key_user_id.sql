-- Verify schemas/dashboard_public/tables/user_question_template_answers/alterations/add_foreign_key_user_id  on pg

BEGIN;

SELECT verify_constraint('dashboard_public.user_question_template_answers', 'fk_dashboard_public_user_question_template_answers_user_id');

ROLLBACK;
