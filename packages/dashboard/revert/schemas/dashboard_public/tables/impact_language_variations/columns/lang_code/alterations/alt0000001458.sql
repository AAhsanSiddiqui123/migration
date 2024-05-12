-- Revert: schemas/dashboard_public/tables/impact_language_variations/columns/lang_code/alterations/alt0000001458 from pg

BEGIN;
ALTER TABLE "dashboard_public".impact_language_variations DROP CONSTRAINT impact_language_variations_lang_code_chk;
COMMIT;  

