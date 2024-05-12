-- Revert: schemas/dashboard_public/tables/object_types/constraints/object_types_name_key/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".object_types 
    DROP CONSTRAINT object_types_name_key;

COMMIT;  

