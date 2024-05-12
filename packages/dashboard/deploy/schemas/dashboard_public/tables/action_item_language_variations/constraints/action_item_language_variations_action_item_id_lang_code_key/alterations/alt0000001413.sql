-- Deploy: schemas/dashboard_public/tables/action_item_language_variations/constraints/action_item_language_variations_action_item_id_lang_code_key/alterations/alt0000001413 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_item_language_variations/constraints/action_item_language_variations_action_item_id_lang_code_key/constraint

BEGIN;
COMMENT ON CONSTRAINT action_item_language_variations_action_item_id_lang_code_key ON "dashboard_public".action_item_language_variations IS E'@omit';
COMMIT;
