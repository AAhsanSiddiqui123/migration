-- Revert: schemas/dashboard_public/tables/object_records/columns/object_type_attribute_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".object_records DROP COLUMN object_type_attribute_id;
COMMIT;  

