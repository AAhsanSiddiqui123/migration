-- Revert: schemas/dashboard_public/tables/track_locations/constraints/track_locations_location_id_fkey/alterations/alt0000001623 from pg

BEGIN;
COMMENT ON CONSTRAINT track_locations_location_id_fkey ON "dashboard_public".track_locations IS NULL;
COMMIT;  

