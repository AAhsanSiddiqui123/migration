-- Deploy: schemas/dashboard_public/tables/track_locations/indexes/track_locations_coords_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_locations/table
-- requires: schemas/dashboard_public/tables/track_locations/columns/coords/column

BEGIN;
CREATE INDEX track_locations_coords_idx ON "dashboard_public".track_locations USING GIST (coords);
COMMIT;
