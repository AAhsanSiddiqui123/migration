-- Verify schemas/dashboard_public/tables/user_question_template_answers/alterations/alter_table_add_answer  on pg

BEGIN;

SELECT answer FROM dashboard_public.user_question_template_answers LIMIT 1;

ROLLBACK;
