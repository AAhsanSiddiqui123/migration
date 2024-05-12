-- Revert: schemas/dashboard_public/tables/language_dictionary/constraints/language_dictionaries_lang_code_name_key/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".language_dictionary 
    DROP CONSTRAINT language_dictionaries_lang_code_name_key;

COMMIT;  

