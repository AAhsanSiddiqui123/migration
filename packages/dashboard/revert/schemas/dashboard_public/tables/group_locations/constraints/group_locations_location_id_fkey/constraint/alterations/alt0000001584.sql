-- Revert: schemas/dashboard_public/tables/group_locations/constraints/group_locations_location_id_fkey/constraint/alterations/alt0000001584 from pg

BEGIN;


ALTER TABLE "dashboard_public".group_locations 
    DROP CONSTRAINT group_locations_location_id_fkey;

COMMIT;  

