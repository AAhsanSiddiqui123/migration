-- Revert: schemas/dashboard_public/tables/units/columns/quantity_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".units DROP COLUMN quantity_id;
COMMIT;  

