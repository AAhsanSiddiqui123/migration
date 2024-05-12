-- Revert: schemas/dashboard_public/tables/object_type_values/columns/value_order/alterations/alt0000000674 from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_values 
    ALTER COLUMN value_order DROP DEFAULT;

COMMIT;  

