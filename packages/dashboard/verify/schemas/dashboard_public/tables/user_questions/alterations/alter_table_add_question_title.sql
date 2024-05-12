-- Verify schemas/dashboard_public/tables/user_questions/alterations/alter_table_add_question_title  on pg

BEGIN;

SELECT question_title FROM dashboard_public.user_questions LIMIT 1;

ROLLBACK;
