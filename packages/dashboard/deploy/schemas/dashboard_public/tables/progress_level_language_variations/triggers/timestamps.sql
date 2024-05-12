-- Deploy schemas/dashboard_public/tables/progress_level_language_variations/triggers/timestamps to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/progress_level_language_variations/table

BEGIN;

ALTER TABLE dashboard_public.progress_level_language_variations ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE dashboard_public.progress_level_language_variations ALTER COLUMN created_at SET DEFAULT NOW();

ALTER TABLE dashboard_public.progress_level_language_variations ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE dashboard_public.progress_level_language_variations ALTER COLUMN updated_at SET DEFAULT NOW();

CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON dashboard_public.progress_level_language_variations
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();

COMMIT;
