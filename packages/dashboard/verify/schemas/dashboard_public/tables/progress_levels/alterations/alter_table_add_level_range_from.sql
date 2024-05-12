-- Verify schemas/dashboard_public/tables/progress_levels/alterations/alter_table_add_level_range_from  on pg

BEGIN;

SELECT level_range_from FROM dashboard_public.progress_levels LIMIT 1;

ROLLBACK;
