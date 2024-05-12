-- Verify schemas/dashboard_public/tables/progress_levels/alterations/alter_table_add_data_tags  on pg

BEGIN;

SELECT data_tags FROM dashboard_public.progress_levels LIMIT 1;

ROLLBACK;
