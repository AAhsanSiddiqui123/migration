-- Revert schemas/dashboard_public/tables/progress_level_images/alterations/alter_table_add_progress_level_id from pg

BEGIN;

ALTER TABLE dashboard_public.progress_level_images
    DROP COLUMN progress_level_id;

COMMIT;
