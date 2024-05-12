-- Verify schemas/dashboard_public/tables/progress_levels/alterations/alter_table_add_name  on pg

BEGIN;

SELECT name FROM dashboard_public.progress_levels LIMIT 1;

ROLLBACK;
