-- Revert: schemas/dashboard_public/tables/object_type_attributes/columns/min/column from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_attributes DROP COLUMN min;
COMMIT;  

