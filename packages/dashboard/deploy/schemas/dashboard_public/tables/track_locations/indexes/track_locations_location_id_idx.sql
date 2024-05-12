-- Deploy: schemas/dashboard_public/tables/track_locations/indexes/track_locations_location_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_locations/table
-- requires: schemas/dashboard_public/tables/track_locations/columns/location_id/column

BEGIN;
CREATE INDEX track_locations_location_id_idx ON "dashboard_public".track_locations (location_id);
COMMIT;
