-- Revert: schemas/dashboard_public/tables/object_type_values/columns/name/column from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_values DROP COLUMN name;
COMMIT;  

