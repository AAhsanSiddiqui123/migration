-- Deploy: schemas/dashboard_public/tables/group_locations/indexes/group_locations_coords_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_locations/table
-- requires: schemas/dashboard_public/tables/group_locations/columns/coords/column

BEGIN;
CREATE INDEX group_locations_coords_idx ON "dashboard_public".group_locations USING GIST (coords);
COMMIT;
