-- Verify schemas/dashboard_public/tables/user_question_template_answers/alterations/alter_table_add_user_id  on pg

BEGIN;

SELECT user_id FROM dashboard_public.user_question_template_answers LIMIT 1;

ROLLBACK;
