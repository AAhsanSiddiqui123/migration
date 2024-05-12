-- Revert: schemas/dashboard_public/tables/global_languages/columns/lang_code/alterations/alt0000001285 from pg

BEGIN;
ALTER TABLE "dashboard_public".global_languages DROP CONSTRAINT global_languages_lang_code_chk;
COMMIT;  

