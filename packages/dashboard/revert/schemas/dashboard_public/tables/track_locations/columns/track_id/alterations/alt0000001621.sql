-- Revert: schemas/dashboard_public/tables/track_locations/columns/track_id/alterations/alt0000001621 from pg

BEGIN;


ALTER TABLE "dashboard_public".track_locations 
    ALTER COLUMN track_id DROP NOT NULL;


COMMIT;  

