-- Deploy: schemas/dashboard_public/tables/user_action_items/constraints/user_action_items_unit_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/units/table
-- requires: schemas/dashboard_public/tables/units/columns/id/column
-- requires: schemas/dashboard_public/tables/user_action_items/table
-- requires: schemas/dashboard_public/tables/user_action_items/columns/unit_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_action_items 
    ADD CONSTRAINT user_action_items_unit_id_fkey 
    FOREIGN KEY (unit_id)
    REFERENCES "dashboard_public".units (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
