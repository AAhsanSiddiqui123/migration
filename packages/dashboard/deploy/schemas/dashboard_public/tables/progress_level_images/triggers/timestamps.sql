-- Deploy schemas/dashboard_public/tables/progress_level_images/triggers/timestamps to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/progress_level_images/table

BEGIN;

ALTER TABLE dashboard_public.progress_level_images ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE dashboard_public.progress_level_images ALTER COLUMN created_at SET DEFAULT NOW();

ALTER TABLE dashboard_public.progress_level_images ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE dashboard_public.progress_level_images ALTER COLUMN updated_at SET DEFAULT NOW();

CREATE TRIGGER update_dashboard_public_progress_level_images_modtime
BEFORE UPDATE OR INSERT ON dashboard_public.progress_level_images
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();

COMMIT;
