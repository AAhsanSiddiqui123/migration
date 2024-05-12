-- Revert: schemas/dashboard_public/tables/action_item_language_variations/constraints/action_item_language_variations_action_item_id_lang_code_key/alterations/alt0000001413 from pg

BEGIN;
COMMENT ON CONSTRAINT action_item_language_variations_action_item_id_lang_code_key ON "dashboard_public".action_item_language_variations IS NULL;
COMMIT;  

