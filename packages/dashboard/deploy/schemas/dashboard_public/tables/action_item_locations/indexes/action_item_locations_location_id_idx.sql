-- Deploy: schemas/dashboard_public/tables/action_item_locations/indexes/action_item_locations_location_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_item_locations/table
-- requires: schemas/dashboard_public/tables/action_item_locations/columns/location_id/column

BEGIN;
CREATE INDEX action_item_locations_location_id_idx ON "dashboard_public".action_item_locations (location_id);
COMMIT;
