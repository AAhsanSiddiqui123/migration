-- Revert schemas/dashboard_public/tables/progress_level_images/alterations/alter_table_add_progresss_percnetage_from from pg

BEGIN;

ALTER TABLE dashboard_public.progress_level_images
    DROP COLUMN progresss_percnetage_from;

COMMIT;
