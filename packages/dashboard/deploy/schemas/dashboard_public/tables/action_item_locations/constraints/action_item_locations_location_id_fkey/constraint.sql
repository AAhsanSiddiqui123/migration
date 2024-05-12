-- Deploy: schemas/dashboard_public/tables/action_item_locations/constraints/action_item_locations_location_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/locations/table
-- requires: schemas/dashboard_public/tables/action_item_locations/table
-- requires: schemas/dashboard_public/tables/locations/columns/id/column
-- requires: schemas/dashboard_public/tables/action_item_locations/columns/location_id/column

BEGIN;

ALTER TABLE "dashboard_public".action_item_locations 
    ADD CONSTRAINT action_item_locations_location_id_fkey 
    FOREIGN KEY (location_id)
    REFERENCES "dashboard_public".locations (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
