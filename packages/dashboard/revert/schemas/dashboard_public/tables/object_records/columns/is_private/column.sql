-- Revert: schemas/dashboard_public/tables/object_records/columns/is_private/column from pg

BEGIN;


ALTER TABLE "dashboard_public".object_records DROP COLUMN is_private;
COMMIT;  

