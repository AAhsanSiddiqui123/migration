-- Revert: schemas/dashboard_public/tables/object_records/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".object_records DROP COLUMN id;
COMMIT;  

