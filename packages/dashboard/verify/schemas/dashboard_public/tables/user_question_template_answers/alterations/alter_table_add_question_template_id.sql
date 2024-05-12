-- Verify schemas/dashboard_public/tables/user_question_template_answers/alterations/alter_table_add_question_template_id  on pg

BEGIN;

SELECT question_template_id FROM dashboard_public.user_question_template_answers LIMIT 1;

ROLLBACK;
