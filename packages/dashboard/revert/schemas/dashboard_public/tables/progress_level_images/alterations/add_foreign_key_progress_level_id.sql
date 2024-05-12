-- Revert schemas/dashboard_public/tables/progress_level_images/alterations/add_foreign_key_progress_level_id from pg

BEGIN;

ALTER TABLE dashboard_public.progress_level_images
    DROP CONSTRAINT fk_dashboard_public_progress_level_images_progress_level_id;

COMMIT;
