-- Revert: schemas/dashboard_public/tables/object_records/columns/image/column from pg

BEGIN;


ALTER TABLE "dashboard_public".object_records DROP COLUMN image;
COMMIT;  

