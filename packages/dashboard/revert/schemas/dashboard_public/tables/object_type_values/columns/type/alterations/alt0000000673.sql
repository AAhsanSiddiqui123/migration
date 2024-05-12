-- Revert: schemas/dashboard_public/tables/object_type_values/columns/type/alterations/alt0000000673 from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_values 
    ALTER COLUMN type DROP DEFAULT;

COMMIT;  

