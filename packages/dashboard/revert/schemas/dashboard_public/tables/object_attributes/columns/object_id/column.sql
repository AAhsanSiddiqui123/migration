-- Revert: schemas/dashboard_public/tables/object_attributes/columns/object_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".object_attributes DROP COLUMN object_id;
COMMIT;  

