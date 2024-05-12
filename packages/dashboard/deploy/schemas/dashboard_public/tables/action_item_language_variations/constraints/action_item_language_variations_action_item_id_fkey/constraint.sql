-- Deploy: schemas/dashboard_public/tables/action_item_language_variations/constraints/action_item_language_variations_action_item_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_items/table
-- requires: schemas/dashboard_public/tables/action_items/columns/id/column
-- requires: schemas/dashboard_public/tables/action_item_language_variations/table
-- requires: schemas/dashboard_public/tables/action_item_language_variations/columns/action_item_id/column

BEGIN;

ALTER TABLE "dashboard_public".action_item_language_variations 
    ADD CONSTRAINT action_item_language_variations_action_item_id_fkey 
    FOREIGN KEY (action_item_id)
    REFERENCES "dashboard_public".action_items (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
