-- Revert: schemas/dashboard_public/tables/locations/constraints/locations_owner_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".locations 
    DROP CONSTRAINT locations_owner_id_fkey;

COMMIT;  

