-- Revert: schemas/dashboard_public/tables/object_type_values/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_values DROP COLUMN id;
COMMIT;  

