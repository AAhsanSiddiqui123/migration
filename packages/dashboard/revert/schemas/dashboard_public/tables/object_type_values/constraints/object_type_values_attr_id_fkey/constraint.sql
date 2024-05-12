-- Revert: schemas/dashboard_public/tables/object_type_values/constraints/object_type_values_attr_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_values 
    DROP CONSTRAINT object_type_values_attr_id_fkey;

COMMIT;  

