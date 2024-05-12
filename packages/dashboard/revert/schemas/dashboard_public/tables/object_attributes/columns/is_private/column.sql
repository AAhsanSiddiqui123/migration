-- Revert: schemas/dashboard_public/tables/object_attributes/columns/is_private/column from pg

BEGIN;


ALTER TABLE "dashboard_public".object_attributes DROP COLUMN is_private;
COMMIT;  

