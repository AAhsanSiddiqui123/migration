-- Deploy: schemas/dashboard_public/tables/action_language_variations/constraints/action_language_variations_lang_code_action_id_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_language_variations/table

BEGIN;

ALTER TABLE "dashboard_public".action_language_variations
    ADD CONSTRAINT action_language_variations_lang_code_action_id_key UNIQUE (lang_code,action_id);
COMMIT;
