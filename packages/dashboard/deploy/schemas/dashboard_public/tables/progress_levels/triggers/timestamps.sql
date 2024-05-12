-- Deploy schemas/dashboard_public/tables/progress_levels/triggers/timestamps to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/progress_levels/table

BEGIN;

ALTER TABLE dashboard_public.progress_levels ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE dashboard_public.progress_levels ALTER COLUMN created_at SET DEFAULT NOW();

ALTER TABLE dashboard_public.progress_levels ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE dashboard_public.progress_levels ALTER COLUMN updated_at SET DEFAULT NOW();

CREATE TRIGGER update_dashboard_public_progress_levels_modtime
BEFORE UPDATE OR INSERT ON dashboard_public.progress_levels
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();

COMMIT;
