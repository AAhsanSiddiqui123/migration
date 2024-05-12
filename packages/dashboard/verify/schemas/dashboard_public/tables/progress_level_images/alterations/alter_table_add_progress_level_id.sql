-- Verify schemas/dashboard_public/tables/progress_level_images/alterations/alter_table_add_progress_level_id  on pg

BEGIN;

SELECT progress_level_id FROM dashboard_public.progress_level_images LIMIT 1;

ROLLBACK;
