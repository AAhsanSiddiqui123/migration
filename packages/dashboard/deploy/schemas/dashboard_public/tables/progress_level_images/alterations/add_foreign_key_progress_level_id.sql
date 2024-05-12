-- Deploy schemas/dashboard_public/tables/progress_level_images/alterations/add_foreign_key_progress_level_id to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/progress_level_images/table
-- requires: schemas/dashboard_public/tables/progress_levels/table

BEGIN;


ALTER TABLE dashboard_public.progress_level_images
    ADD CONSTRAINT fk_dashboard_public_progress_level_images_progress_level_id
    FOREIGN KEY (progress_level_id)
    REFERENCES dashboard_public.progress_levels (id)
    ON DELETE CASCADE;


COMMIT;
