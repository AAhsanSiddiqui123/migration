-- Deploy: schemas/dashboard_public/tables/language_dictionary/columns/lang_code/alterations/alt0000001291 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/language_dictionary/table
-- requires: schemas/dashboard_public/tables/language_dictionary/columns/lang_code/column

BEGIN;
ALTER TABLE "dashboard_public".language_dictionary ADD CONSTRAINT language_dictionaries_lang_code_chk CHECK (character_length(lang_code) <= 10);
COMMIT;
