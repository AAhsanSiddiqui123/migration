-- Revert: schemas/dashboard_public/tables/object_attributes/columns/owner_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".object_attributes DROP COLUMN owner_id;
COMMIT;  

