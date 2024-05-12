-- Revert: schemas/dashboard_public/tables/object_type_values/columns/data/column from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_values DROP COLUMN data;
COMMIT;  

