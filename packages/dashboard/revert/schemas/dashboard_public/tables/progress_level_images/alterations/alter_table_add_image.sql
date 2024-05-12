-- Revert schemas/dashboard_public/tables/progress_level_images/alterations/alter_table_add_image from pg

BEGIN;

ALTER TABLE dashboard_public.progress_level_images
    DROP COLUMN image;

COMMIT;
