-- Revert: schemas/dashboard_public/tables/object_types/columns/quantity_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".object_types DROP COLUMN quantity_id;
COMMIT;  

