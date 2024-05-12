-- Verify schemas/dashboard_public/tables/progress_levels/alterations/alter_table_add_description  on pg

BEGIN;

SELECT description FROM dashboard_public.progress_levels LIMIT 1;

ROLLBACK;
