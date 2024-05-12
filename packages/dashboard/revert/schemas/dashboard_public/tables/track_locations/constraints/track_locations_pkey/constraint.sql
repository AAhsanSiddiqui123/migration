-- Revert: schemas/dashboard_public/tables/track_locations/constraints/track_locations_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".track_locations 
    DROP CONSTRAINT track_locations_pkey;

COMMIT;  

