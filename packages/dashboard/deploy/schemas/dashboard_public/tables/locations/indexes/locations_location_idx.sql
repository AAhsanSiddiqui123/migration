-- Deploy: schemas/dashboard_public/tables/locations/indexes/locations_location_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/locations/table
-- requires: schemas/dashboard_public/tables/locations/columns/location/column

BEGIN;
CREATE INDEX locations_location_idx ON "dashboard_public".locations USING GIST (location);
COMMIT;
