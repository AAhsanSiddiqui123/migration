-- Deploy schemas/dashboard_public/tables/progress_level_language_variations/triggers/peoplestamps to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/progress_level_language_variations/table

BEGIN;

ALTER TABLE dashboard_public.progress_level_language_variations ADD COLUMN created_by UUID;
ALTER TABLE dashboard_public.progress_level_language_variations ADD COLUMN updated_by UUID;

CREATE TRIGGER peoplestamps_tg
BEFORE UPDATE OR INSERT ON dashboard_public.progress_level_language_variations
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();

COMMIT;
