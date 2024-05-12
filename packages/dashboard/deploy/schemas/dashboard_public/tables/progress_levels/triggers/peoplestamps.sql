-- Deploy schemas/dashboard_public/tables/progress_levels/triggers/peoplestamps to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/progress_levels/table

BEGIN;

ALTER TABLE dashboard_public.progress_levels ADD COLUMN created_by UUID;
ALTER TABLE dashboard_public.progress_levels ADD COLUMN updated_by UUID;

CREATE TRIGGER update_dashboard_public_progress_levels_moduser
BEFORE UPDATE OR INSERT ON dashboard_public.progress_levels
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();

COMMIT;
