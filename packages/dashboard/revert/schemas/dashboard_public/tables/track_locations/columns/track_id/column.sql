-- Revert: schemas/dashboard_public/tables/track_locations/columns/track_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".track_locations DROP COLUMN track_id;
COMMIT;  

