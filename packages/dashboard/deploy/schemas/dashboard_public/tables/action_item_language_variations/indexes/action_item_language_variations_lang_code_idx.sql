-- Deploy: schemas/dashboard_public/tables/action_item_language_variations/indexes/action_item_language_variations_lang_code_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_item_language_variations/table
-- requires: schemas/dashboard_public/tables/action_item_language_variations/columns/lang_code/column

BEGIN;
CREATE INDEX action_item_language_variations_lang_code_idx ON "dashboard_public".action_item_language_variations (lang_code);
COMMIT;
