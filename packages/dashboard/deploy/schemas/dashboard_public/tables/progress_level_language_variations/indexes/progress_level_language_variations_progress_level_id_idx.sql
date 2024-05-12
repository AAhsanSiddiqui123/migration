-- Deploy schemas/dashboard_public/tables/progress_level_language_variations/indexes/progress_level_language_variations_progress_level_id_idx to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/progress_level_language_variations/table

BEGIN;

CREATE INDEX progress_level_language_variations_progress_level_id_idx ON dashboard_public.progress_level_language_variations(progress_level_id);

COMMIT;
