-- Verify schemas/dashboard_public/tables/user_question_language_variations/alterations/alter_table_add_question_title  on pg

BEGIN;

SELECT question_title FROM dashboard_public.user_question_language_variations LIMIT 1;

ROLLBACK;
