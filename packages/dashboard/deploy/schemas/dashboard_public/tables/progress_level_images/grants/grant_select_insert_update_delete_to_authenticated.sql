-- Deploy schemas/dashboard_public/tables/progress_level_images/grants/grant_select_insert_update_delete_to_authenticated to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/progress_level_images/table

BEGIN;

-- TODO make sure to require any policies on this table!

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE dashboard_public.progress_level_images TO authenticated;

COMMIT;
