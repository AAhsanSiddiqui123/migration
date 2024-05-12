-- Revert: schemas/dashboard_public/tables/object_records/columns/unit_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".object_records DROP COLUMN unit_id;
COMMIT;  

