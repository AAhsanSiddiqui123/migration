-- Revert: schemas/dashboard_public/tables/object_type_attributes/columns/unit_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_attributes DROP COLUMN unit_id;
COMMIT;  

