-- Revert: schemas/dashboard_public/tables/object_records/table from pg

BEGIN;
DROP TABLE "dashboard_public".object_records;
COMMIT;  

