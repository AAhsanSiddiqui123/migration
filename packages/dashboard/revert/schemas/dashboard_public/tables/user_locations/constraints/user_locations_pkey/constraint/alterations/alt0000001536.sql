-- Revert: schemas/dashboard_public/tables/user_locations/constraints/user_locations_pkey/constraint/alterations/alt0000001536 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_locations 
    DROP CONSTRAINT user_locations_pkey;

COMMIT;  

