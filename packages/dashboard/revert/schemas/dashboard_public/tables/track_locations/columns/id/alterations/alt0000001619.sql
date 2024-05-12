-- Revert: schemas/dashboard_public/tables/track_locations/columns/id/alterations/alt0000001619 from pg

BEGIN;


ALTER TABLE "dashboard_public".track_locations 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

