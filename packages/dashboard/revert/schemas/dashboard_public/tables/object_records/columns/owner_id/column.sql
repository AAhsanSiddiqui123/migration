-- Revert: schemas/dashboard_public/tables/object_records/columns/owner_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".object_records DROP COLUMN owner_id;
COMMIT;  

