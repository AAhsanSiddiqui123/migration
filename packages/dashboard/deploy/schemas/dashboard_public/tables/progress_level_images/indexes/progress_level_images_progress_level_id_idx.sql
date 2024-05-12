-- Deploy schemas/dashboard_public/tables/progress_level_images/indexes/progress_level_images_progress_level_id_idx to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/progress_level_images/table

BEGIN;

CREATE INDEX progress_level_images_progress_level_id_idx ON dashboard_public.progress_level_images (
 progress_level_id
);

COMMIT;
