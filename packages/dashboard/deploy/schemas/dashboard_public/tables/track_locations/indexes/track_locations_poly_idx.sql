-- Deploy: schemas/dashboard_public/tables/track_locations/indexes/track_locations_poly_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_locations/table
-- requires: schemas/dashboard_public/tables/track_locations/columns/poly/column

BEGIN;
CREATE INDEX track_locations_poly_idx ON "dashboard_public".track_locations USING GIST (poly);
COMMIT;
