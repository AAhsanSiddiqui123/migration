-- Deploy: schemas/dashboard_public/tables/impact_language_variations/columns/lang_code/alterations/alt0000001458 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impact_language_variations/table
-- requires: schemas/dashboard_public/tables/impact_language_variations/columns/lang_code/column

BEGIN;
ALTER TABLE "dashboard_public".impact_language_variations ADD CONSTRAINT impact_language_variations_lang_code_chk CHECK (character_length(lang_code) <= 10);
COMMIT;
