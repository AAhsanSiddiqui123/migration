-- Deploy: schemas/dashboard_public/tables/action_item_language_variations/constraints/action_item_language_variations_action_item_id_lang_code_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_item_language_variations/table

BEGIN;

ALTER TABLE "dashboard_public".action_item_language_variations
    ADD CONSTRAINT action_item_language_variations_action_item_id_lang_code_key UNIQUE (action_item_id,lang_code);
COMMIT;
