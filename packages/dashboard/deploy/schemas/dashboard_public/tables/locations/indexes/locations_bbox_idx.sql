-- Deploy: schemas/dashboard_public/tables/locations/indexes/locations_bbox_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/locations/table
-- requires: schemas/dashboard_public/tables/locations/columns/bbox/column

BEGIN;
CREATE INDEX locations_bbox_idx ON "dashboard_public".locations USING GIST (bbox);
COMMIT;
