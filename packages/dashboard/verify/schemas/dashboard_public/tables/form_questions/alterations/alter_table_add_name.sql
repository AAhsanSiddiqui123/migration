-- Verify schemas/dashboard_public/tables/form_questions/alterations/alter_table_add_name  on pg

BEGIN;

SELECT name FROM dashboard_public.form_questions LIMIT 1;

ROLLBACK;
