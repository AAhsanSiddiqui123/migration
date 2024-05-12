-- Revert: schemas/dashboard_public/tables/track_locations/columns/id/alterations/alt0000001620 from pg

BEGIN;


ALTER TABLE "dashboard_public".track_locations 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

