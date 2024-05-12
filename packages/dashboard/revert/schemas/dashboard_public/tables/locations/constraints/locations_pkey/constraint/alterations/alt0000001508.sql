-- Revert: schemas/dashboard_public/tables/locations/constraints/locations_pkey/constraint/alterations/alt0000001508 from pg

BEGIN;


ALTER TABLE "dashboard_public".locations 
    DROP CONSTRAINT locations_pkey;

COMMIT;  

