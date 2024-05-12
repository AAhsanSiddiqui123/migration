-- Revert: schemas/dashboard_public/tables/language_dictionary/columns/lang_code/alterations/alt0000001291 from pg

BEGIN;
ALTER TABLE "dashboard_public".language_dictionary DROP CONSTRAINT language_dictionaries_lang_code_chk;
COMMIT;  

