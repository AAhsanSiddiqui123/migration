-- Revert: schemas/dashboard_public/tables/object_records/columns/date/column from pg

BEGIN;


ALTER TABLE "dashboard_public".object_records DROP COLUMN date;
COMMIT;  

