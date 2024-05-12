-- Revert: schemas/dashboard_public/tables/group_locations/columns/location_id/alterations/alt0000001583 from pg

BEGIN;


ALTER TABLE "dashboard_public".group_locations 
    ALTER COLUMN location_id DROP NOT NULL;


COMMIT;  

