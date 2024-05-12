-- Revert: schemas/dashboard_public/tables/group_locations/constraints/group_locations_pkey/constraint/alterations/alt0000001574 from pg

BEGIN;


ALTER TABLE "dashboard_public".group_locations 
    DROP CONSTRAINT group_locations_pkey;

COMMIT;  

