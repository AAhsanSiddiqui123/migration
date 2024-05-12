-- Verify schemas/dashboard_public/tables/progress_levels/alterations/alter_table_add_header  on pg

BEGIN;

SELECT header FROM dashboard_public.progress_levels LIMIT 1;

ROLLBACK;
