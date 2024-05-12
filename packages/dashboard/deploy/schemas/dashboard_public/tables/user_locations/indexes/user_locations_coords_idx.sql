-- Deploy: schemas/dashboard_public/tables/user_locations/indexes/user_locations_coords_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_locations/table
-- requires: schemas/dashboard_public/tables/user_locations/columns/coords/column

BEGIN;
CREATE INDEX user_locations_coords_idx ON "dashboard_public".user_locations USING GIST (coords);
COMMIT;
