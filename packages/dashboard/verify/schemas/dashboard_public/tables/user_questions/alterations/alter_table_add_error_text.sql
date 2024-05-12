-- Verify schemas/dashboard_public/tables/user_questions/alterations/alter_table_add_error_text  on pg

BEGIN;

SELECT error_text FROM dashboard_public.user_questions LIMIT 1;

ROLLBACK;
