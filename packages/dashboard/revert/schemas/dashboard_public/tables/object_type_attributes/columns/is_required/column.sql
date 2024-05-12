-- Revert: schemas/dashboard_public/tables/object_type_attributes/columns/is_required/column from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_attributes DROP COLUMN is_required;
COMMIT;  

