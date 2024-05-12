-- Revert: schemas/dashboard_public/tables/locations/constraints/locations_location_type_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".locations 
    DROP CONSTRAINT locations_location_type_fkey;

COMMIT;  

