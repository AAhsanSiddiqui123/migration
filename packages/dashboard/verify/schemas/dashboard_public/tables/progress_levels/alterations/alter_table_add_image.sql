-- Verify schemas/dashboard_public/tables/progress_levels/alterations/alter_table_add_image  on pg

BEGIN;

SELECT image FROM dashboard_public.progress_levels LIMIT 1;

ROLLBACK;
