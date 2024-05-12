-- Verify schemas/dashboard_public/tables/user_question_template_answers/indexes/user_question_template_answers_user_id_template_id  on pg

BEGIN;

SELECT verify_index ('dashboard_public.user_question_template_answers', 'user_question_template_answers_user_id_template_id');

ROLLBACK;
