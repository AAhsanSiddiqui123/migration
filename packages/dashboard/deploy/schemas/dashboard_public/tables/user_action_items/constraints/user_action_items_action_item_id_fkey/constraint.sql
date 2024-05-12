-- Deploy: schemas/dashboard_public/tables/user_action_items/constraints/user_action_items_action_item_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_items/table
-- requires: schemas/dashboard_public/tables/user_action_items/table
-- requires: schemas/dashboard_public/tables/action_items/columns/id/column
-- requires: schemas/dashboard_public/tables/user_action_items/columns/action_item_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_action_items 
    ADD CONSTRAINT user_action_items_action_item_id_fkey 
    FOREIGN KEY (action_item_id)
    REFERENCES "dashboard_public".action_items (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
