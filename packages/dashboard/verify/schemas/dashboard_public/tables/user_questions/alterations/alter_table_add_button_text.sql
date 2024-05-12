-- Verify schemas/dashboard_public/tables/user_questions/alterations/alter_table_add_button_text  on pg

BEGIN;

SELECT button_text FROM dashboard_public.user_questions LIMIT 1;

ROLLBACK;
