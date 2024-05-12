-- Revert: schemas/dashboard_public/tables/group_locations/constraints/group_locations_group_id_fkey/constraint/alterations/alt0000001579 from pg

BEGIN;


ALTER TABLE "dashboard_public".group_locations 
    DROP CONSTRAINT group_locations_group_id_fkey;

COMMIT;  

