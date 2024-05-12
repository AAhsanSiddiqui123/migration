-- Revert: schemas/dashboard_public/tables/user_locations/constraints/user_locations_user_id_fkey/constraint/alterations/alt0000001544 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_locations 
    DROP CONSTRAINT user_locations_user_id_fkey;

COMMIT;  

