-- Revert: schemas/dashboard_public/tables/track_language_variations/constraints/track_language_variations_track_id_lang_code_key/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".track_language_variations 
    DROP CONSTRAINT track_language_variations_track_id_lang_code_key;

COMMIT;  

