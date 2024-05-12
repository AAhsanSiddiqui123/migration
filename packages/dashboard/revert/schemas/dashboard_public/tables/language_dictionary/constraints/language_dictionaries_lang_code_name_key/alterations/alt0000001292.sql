-- Revert: schemas/dashboard_public/tables/language_dictionary/constraints/language_dictionaries_lang_code_name_key/alterations/alt0000001292 from pg

BEGIN;
COMMENT ON CONSTRAINT language_dictionaries_lang_code_name_key ON "dashboard_public".language_dictionary IS NULL;
COMMIT;  

