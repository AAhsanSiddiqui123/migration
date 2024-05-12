-- Revert: schemas/dashboard_public/tables/track_locations/table from pg

BEGIN;
DROP TABLE "dashboard_public".track_locations;
COMMIT;  

