-- Verify schemas/dashboard_public/tables/progress_level_images/triggers/timestamps  on pg

BEGIN;

SELECT created_at FROM dashboard_public.progress_level_images LIMIT 1;
SELECT updated_at FROM dashboard_public.progress_level_images LIMIT 1;
SELECT verify_trigger ('dashboard_public.update_dashboard_public_progress_level_images_modtime');

ROLLBACK;
