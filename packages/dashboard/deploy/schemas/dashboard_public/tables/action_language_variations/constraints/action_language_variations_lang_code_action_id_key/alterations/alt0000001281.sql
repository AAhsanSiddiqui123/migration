-- Deploy: schemas/dashboard_public/tables/action_language_variations/constraints/action_language_variations_lang_code_action_id_key/alterations/alt0000001281 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_language_variations/constraints/action_language_variations_lang_code_action_id_key/constraint

BEGIN;
COMMENT ON CONSTRAINT action_language_variations_lang_code_action_id_key ON "dashboard_public".action_language_variations IS NULL;
COMMIT;
