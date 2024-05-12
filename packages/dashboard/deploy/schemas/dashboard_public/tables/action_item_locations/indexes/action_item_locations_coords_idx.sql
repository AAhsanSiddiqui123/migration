-- Deploy: schemas/dashboard_public/tables/action_item_locations/indexes/action_item_locations_coords_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_item_locations/table
-- requires: schemas/dashboard_public/tables/action_item_locations/columns/coords/column

BEGIN;
CREATE INDEX action_item_locations_coords_idx ON "dashboard_public".action_item_locations USING GIST (coords);
COMMIT;
