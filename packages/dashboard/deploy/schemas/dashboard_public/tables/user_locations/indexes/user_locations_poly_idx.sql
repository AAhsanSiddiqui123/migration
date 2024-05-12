-- Deploy: schemas/dashboard_public/tables/user_locations/indexes/user_locations_poly_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_locations/table
-- requires: schemas/dashboard_public/tables/user_locations/columns/poly/column

BEGIN;
CREATE INDEX user_locations_poly_idx ON "dashboard_public".user_locations USING GIST (poly);
COMMIT;
