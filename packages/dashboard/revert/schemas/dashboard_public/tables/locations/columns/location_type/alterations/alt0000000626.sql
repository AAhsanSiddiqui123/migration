-- Revert: schemas/dashboard_public/tables/locations/columns/location_type/alterations/alt0000000626 from pg

BEGIN;


ALTER TABLE "dashboard_public".locations 
    ALTER COLUMN location_type DROP NOT NULL;


COMMIT;  

