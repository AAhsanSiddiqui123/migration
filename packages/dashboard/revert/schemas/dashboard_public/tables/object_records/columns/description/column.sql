-- Revert: schemas/dashboard_public/tables/object_records/columns/description/column from pg

BEGIN;


ALTER TABLE "dashboard_public".object_records DROP COLUMN description;
COMMIT;  

