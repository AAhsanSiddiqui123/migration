-- Revert: schemas/dashboard_public/tables/track_language_variations/constraints/track_language_variations_track_id_lang_code_key/alterations/alt0000001425 from pg

BEGIN;
COMMENT ON CONSTRAINT track_language_variations_track_id_lang_code_key ON "dashboard_public".track_language_variations IS NULL;
COMMIT;  

