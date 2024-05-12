-- Revert: schemas/dashboard_public/tables/track_language_variations/columns/lang_code/alterations/alt0000001418 from pg

BEGIN;
ALTER TABLE "dashboard_public".track_language_variations DROP CONSTRAINT track_language_variations_lang_code_chk;
COMMIT;  

