-- Verify schemas/dashboard_public/tables/progress_level_images/alterations/alter_table_add_progresss_percnetage_to  on pg

BEGIN;

SELECT progresss_percnetage_to FROM dashboard_public.progress_level_images LIMIT 1;

ROLLBACK;
