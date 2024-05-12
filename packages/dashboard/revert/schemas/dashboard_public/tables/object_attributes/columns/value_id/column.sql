-- Revert: schemas/dashboard_public/tables/object_attributes/columns/value_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".object_attributes DROP COLUMN value_id;
COMMIT;  

