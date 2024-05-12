-- Revert schemas/dashboard_public/tables/progress_level_images/triggers/timestamps from pg

BEGIN;

ALTER TABLE dashboard_public.progress_level_images DROP COLUMN created_at;
ALTER TABLE dashboard_public.progress_level_images DROP COLUMN updated_at;
DROP TRIGGER update_dashboard_public_progress_level_images_modtime ON dashboard_public.progress_level_images;

COMMIT;
