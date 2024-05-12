-- Revert: schemas/dashboard_public/tables/track_locations/columns/poly/column from pg

BEGIN;


ALTER TABLE "dashboard_public".track_locations DROP COLUMN poly;
COMMIT;  

