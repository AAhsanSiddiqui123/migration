-- Revert schemas/dashboard_public/tables/progress_level_images/triggers/peoplestamps from pg

BEGIN;

ALTER TABLE dashboard_public.progress_level_images DROP COLUMN created_by;
ALTER TABLE dashboard_public.progress_level_images DROP COLUMN updated_by;
DROP TRIGGER update_dashboard_public_progress_level_images_moduser ON dashboard_public.progress_level_images;

COMMIT;
