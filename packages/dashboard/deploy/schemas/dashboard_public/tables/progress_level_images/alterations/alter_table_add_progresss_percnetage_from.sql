-- Deploy schemas/dashboard_public/tables/progress_level_images/alterations/alter_table_add_progresss_percnetage_from to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/progress_level_images/table

BEGIN;

ALTER TABLE dashboard_public.progress_level_images
    ADD COLUMN progresss_percnetage_from numeric NOT NULL;

COMMIT;
