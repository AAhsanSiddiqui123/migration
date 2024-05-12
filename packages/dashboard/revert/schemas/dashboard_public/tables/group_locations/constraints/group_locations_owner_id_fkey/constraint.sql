-- Revert: schemas/dashboard_public/tables/group_locations/constraints/group_locations_owner_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".group_locations 
    DROP CONSTRAINT group_locations_owner_id_fkey;

COMMIT;  

