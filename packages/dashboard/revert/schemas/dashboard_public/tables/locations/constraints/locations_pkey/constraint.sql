-- Revert: schemas/dashboard_public/tables/locations/constraints/locations_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".locations 
    DROP CONSTRAINT locations_pkey;

COMMIT;  

