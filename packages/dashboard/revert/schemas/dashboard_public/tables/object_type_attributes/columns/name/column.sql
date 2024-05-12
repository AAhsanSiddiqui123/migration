-- Revert: schemas/dashboard_public/tables/object_type_attributes/columns/name/column from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_attributes DROP COLUMN name;
COMMIT;  

