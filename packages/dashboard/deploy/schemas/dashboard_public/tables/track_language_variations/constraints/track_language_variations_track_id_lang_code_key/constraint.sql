-- Deploy: schemas/dashboard_public/tables/track_language_variations/constraints/track_language_variations_track_id_lang_code_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_language_variations/table

BEGIN;

ALTER TABLE "dashboard_public".track_language_variations
    ADD CONSTRAINT track_language_variations_track_id_lang_code_key UNIQUE (track_id,lang_code);
COMMIT;
