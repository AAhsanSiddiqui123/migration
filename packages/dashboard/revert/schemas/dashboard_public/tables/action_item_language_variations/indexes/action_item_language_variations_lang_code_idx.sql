-- Revert: schemas/dashboard_public/tables/action_item_language_variations/indexes/action_item_language_variations_lang_code_idx from pg

BEGIN;
DROP INDEX "dashboard_public".action_item_language_variations_lang_code_idx;
COMMIT;  

