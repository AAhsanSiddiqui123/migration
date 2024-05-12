-- Revert: schemas/dashboard_public/tables/object_type_attributes/columns/object_type_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_attributes DROP COLUMN object_type_id;
COMMIT;  

