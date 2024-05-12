-- Revert: schemas/dashboard_public/tables/object_type_values/columns/attr_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_values DROP COLUMN attr_id;
COMMIT;  

