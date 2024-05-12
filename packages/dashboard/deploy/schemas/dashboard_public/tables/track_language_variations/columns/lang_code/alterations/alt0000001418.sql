-- Deploy: schemas/dashboard_public/tables/track_language_variations/columns/lang_code/alterations/alt0000001418 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_language_variations/table
-- requires: schemas/dashboard_public/tables/track_language_variations/columns/lang_code/column

BEGIN;
ALTER TABLE "dashboard_public".track_language_variations ADD CONSTRAINT track_language_variations_lang_code_chk CHECK (character_length(lang_code) <= 10);
COMMIT;
