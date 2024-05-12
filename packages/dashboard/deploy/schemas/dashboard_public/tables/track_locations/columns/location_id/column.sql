-- Deploy: schemas/dashboard_public/tables/track_locations/columns/location_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_locations/table

BEGIN;

ALTER TABLE "dashboard_public".track_locations ADD COLUMN location_id uuid;
COMMIT;
