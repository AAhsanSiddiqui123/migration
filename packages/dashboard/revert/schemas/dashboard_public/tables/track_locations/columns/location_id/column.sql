-- Revert: schemas/dashboard_public/tables/track_locations/columns/location_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".track_locations DROP COLUMN location_id;
COMMIT;  

