-- Verify schemas/dashboard_public/tables/progress_level_images/alterations/alter_table_add_image  on pg

BEGIN;

SELECT image FROM dashboard_public.progress_level_images LIMIT 1;

ROLLBACK;
