-- Revert: schemas/dashboard_public/tables/location_types/constraints/location_types_ref_key/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".location_types 
    DROP CONSTRAINT location_types_ref_key;

COMMIT;  

