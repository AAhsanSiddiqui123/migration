-- Revert: schemas/dashboard_public/tables/track_locations/columns/coords/column from pg

BEGIN;


ALTER TABLE "dashboard_public".track_locations DROP COLUMN coords;
COMMIT;  

