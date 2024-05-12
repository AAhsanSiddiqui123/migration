-- Revert: schemas/dashboard_public/tables/action_locations/columns/location_id/alterations/alt0000000840 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_locations 
    ALTER COLUMN location_id DROP NOT NULL;


COMMIT;  

