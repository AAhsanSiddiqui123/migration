-- Revert: schemas/dashboard_public/tables/action_language_variations/constraints/action_language_variations_lang_code_action_id_key/alterations/alt0000001281 from pg

BEGIN;
COMMENT ON CONSTRAINT action_language_variations_lang_code_action_id_key ON "dashboard_public".action_language_variations IS NULL;
COMMIT;  

