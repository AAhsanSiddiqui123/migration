-- Deploy: schemas/dashboard_public/tables/action_items/constraints/action_items_item_type_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_items/table
-- requires: schemas/dashboard_public/tables/action_item_types/table
-- requires: schemas/dashboard_public/tables/action_item_types/columns/id/column
-- requires: schemas/dashboard_public/tables/action_items/columns/item_type_id/column

BEGIN;

ALTER TABLE "dashboard_public".action_items 
    ADD CONSTRAINT action_items_item_type_id_fkey 
    FOREIGN KEY (item_type_id)
    REFERENCES "dashboard_public".action_item_types (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
