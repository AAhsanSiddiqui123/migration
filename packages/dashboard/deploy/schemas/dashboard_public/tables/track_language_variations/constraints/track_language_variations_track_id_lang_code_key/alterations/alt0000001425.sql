-- Deploy: schemas/dashboard_public/tables/track_language_variations/constraints/track_language_variations_track_id_lang_code_key/alterations/alt0000001425 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_language_variations/constraints/track_language_variations_track_id_lang_code_key/constraint

BEGIN;
COMMENT ON CONSTRAINT track_language_variations_track_id_lang_code_key ON "dashboard_public".track_language_variations IS E'@omit';
COMMIT;
