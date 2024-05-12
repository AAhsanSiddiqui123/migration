-- Deploy schemas/dashboard_public/tables/progress_level_images/alterations/alter_table_add_image to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/progress_level_images/table

BEGIN;

ALTER TABLE dashboard_public.progress_level_images
    ADD COLUMN image image NULL;

COMMIT;
