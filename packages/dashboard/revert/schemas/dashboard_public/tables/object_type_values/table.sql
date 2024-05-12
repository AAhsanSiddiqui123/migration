-- Revert: schemas/dashboard_public/tables/object_type_values/table from pg

BEGIN;
DROP TABLE "dashboard_public".object_type_values;
COMMIT;  

