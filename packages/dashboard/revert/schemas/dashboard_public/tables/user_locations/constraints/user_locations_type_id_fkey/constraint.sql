-- Revert: schemas/dashboard_public/tables/user_locations/constraints/user_locations_type_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".user_locations 
    DROP CONSTRAINT user_locations_type_id_fkey;

COMMIT;  

