-- Revert: schemas/dashboard_public/tables/object_type_values/constraints/object_type_values_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_values 
    DROP CONSTRAINT object_type_values_pkey;

COMMIT;  

