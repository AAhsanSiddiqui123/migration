-- Deploy: schemas/dashboard_public/tables/objects/indexes/objects_location_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/objects/table
-- requires: schemas/dashboard_public/tables/objects/columns/location/column

BEGIN;
CREATE INDEX objects_location_idx ON "dashboard_public".objects USING GIST (location);
COMMIT;
