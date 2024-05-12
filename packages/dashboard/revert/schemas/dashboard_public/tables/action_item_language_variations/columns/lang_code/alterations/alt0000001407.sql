-- Revert: schemas/dashboard_public/tables/action_item_language_variations/columns/lang_code/alterations/alt0000001407 from pg

BEGIN;
ALTER TABLE "dashboard_public".action_item_language_variations DROP CONSTRAINT action_item_language_variations_lang_code_chk;
COMMIT;  

