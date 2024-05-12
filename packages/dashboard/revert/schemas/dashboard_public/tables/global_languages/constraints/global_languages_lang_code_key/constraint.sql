-- Revert: schemas/dashboard_public/tables/global_languages/constraints/global_languages_lang_code_key/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".global_languages 
    DROP CONSTRAINT global_languages_lang_code_key;

COMMIT;  

