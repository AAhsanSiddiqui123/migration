-- Revert: schemas/dashboard_public/tables/track_locations/columns/owner_id/alterations/alt0000001624 from pg

BEGIN;


ALTER TABLE "dashboard_public".track_locations 
    ALTER COLUMN owner_id DROP NOT NULL;


COMMIT;  

