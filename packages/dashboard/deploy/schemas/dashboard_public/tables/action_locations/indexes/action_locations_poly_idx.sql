-- Deploy: schemas/dashboard_public/tables/action_locations/indexes/action_locations_poly_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_locations/table
-- requires: schemas/dashboard_public/tables/action_locations/columns/poly/column

BEGIN;
CREATE INDEX action_locations_poly_idx ON "dashboard_public".action_locations USING GIST (poly);
COMMIT;
