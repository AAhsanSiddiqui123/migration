-- Verify schemas/dashboard_public/tables/user_question_language_variations/alterations/alter_table_add_error_text  on pg

BEGIN;

SELECT error_text FROM dashboard_public.user_question_language_variations LIMIT 1;

ROLLBACK;
