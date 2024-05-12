-- Deploy: schemas/dashboard_public/tables/locations/indexes/locations_location_type_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/locations/table
-- requires: schemas/dashboard_public/tables/locations/columns/location_type/column

BEGIN;
CREATE INDEX locations_location_type_idx ON "dashboard_public".locations (location_type);
COMMIT;
