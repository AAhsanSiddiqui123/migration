-- Deploy schemas/dashboard_public/tables/progress_level_images/triggers/peoplestamps to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/progress_level_images/table

BEGIN;

ALTER TABLE dashboard_public.progress_level_images ADD COLUMN created_by UUID;
ALTER TABLE dashboard_public.progress_level_images ADD COLUMN updated_by UUID;

CREATE TRIGGER update_dashboard_public_progress_level_images_moduser
BEFORE UPDATE OR INSERT ON dashboard_public.progress_level_images
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();

COMMIT;
