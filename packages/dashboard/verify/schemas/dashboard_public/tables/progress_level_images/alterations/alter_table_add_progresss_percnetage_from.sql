-- Verify schemas/dashboard_public/tables/progress_level_images/alterations/alter_table_add_progresss_percnetage_from  on pg

BEGIN;

SELECT progresss_percnetage_from FROM dashboard_public.progress_level_images LIMIT 1;

ROLLBACK;
