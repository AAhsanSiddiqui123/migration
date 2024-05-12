-- Verify schemas/dashboard_public/tables/user_questions/alterations/alter_table_add_name  on pg

BEGIN;

SELECT name FROM dashboard_public.user_questions LIMIT 1;

ROLLBACK;
