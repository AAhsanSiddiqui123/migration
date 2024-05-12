-- Deploy: schemas/dashboard_public/tables/locations/indexes/locations_coords_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/locations/table
-- requires: schemas/dashboard_public/tables/locations/columns/coords/column

BEGIN;
CREATE INDEX locations_coords_idx ON "dashboard_public".locations USING GIST (coords);
COMMIT;
