-- Verify schemas/dashboard_public/tables/progress_level_images/indexes/progress_level_images_progress_level_id_idx  on pg

BEGIN;

SELECT verify_index ('dashboard_public.progress_level_images', 'progress_level_images_progress_level_id_idx');

ROLLBACK;
