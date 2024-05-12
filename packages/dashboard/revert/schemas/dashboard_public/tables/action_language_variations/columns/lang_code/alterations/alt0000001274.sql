-- Revert: schemas/dashboard_public/tables/action_language_variations/columns/lang_code/alterations/alt0000001274 from pg

BEGIN;
ALTER TABLE "dashboard_public".action_language_variations DROP CONSTRAINT action_language_variations_lang_code_chk;
COMMIT;  

