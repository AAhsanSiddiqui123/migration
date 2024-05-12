-- Revert: schemas/dashboard_public/tables/global_languages/constraints/global_languages_lang_code_key/alterations/alt0000001286 from pg

BEGIN;
COMMENT ON CONSTRAINT global_languages_lang_code_key ON "dashboard_public".global_languages IS NULL;
COMMIT;  

