-- Deploy: schemas/dashboard_public/tables/action_locations/indexes/action_locations_coords_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_locations/table
-- requires: schemas/dashboard_public/tables/action_locations/columns/coords/column

BEGIN;
CREATE INDEX action_locations_coords_idx ON "dashboard_public".action_locations USING GIST (coords);
COMMIT;
