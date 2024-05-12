-- Revert: schemas/dashboard_public/tables/object_attributes/columns/numeric/column from pg

BEGIN;


ALTER TABLE "dashboard_public".object_attributes DROP COLUMN "numeric";
COMMIT;  

