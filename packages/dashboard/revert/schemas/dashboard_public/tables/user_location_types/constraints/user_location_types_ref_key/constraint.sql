-- Revert: schemas/dashboard_public/tables/user_location_types/constraints/user_location_types_ref_key/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".user_location_types 
    DROP CONSTRAINT user_location_types_ref_key;

COMMIT;  

