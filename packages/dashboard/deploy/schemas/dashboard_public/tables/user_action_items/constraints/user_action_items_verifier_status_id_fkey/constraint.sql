-- Deploy: schemas/dashboard_public/tables/user_action_items/constraints/user_action_items_verifier_status_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_items/table
-- requires: schemas/dashboard_public/tables/action_item_status_types/table
-- requires: schemas/dashboard_public/tables/action_item_status_types/columns/id/column
-- requires: schemas/dashboard_public/tables/user_action_items/columns/verifier_status_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_action_items 
    ADD CONSTRAINT user_action_items_verifier_status_id_fkey 
    FOREIGN KEY (verifier_status_id)
    REFERENCES "dashboard_public".action_item_status_types (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
