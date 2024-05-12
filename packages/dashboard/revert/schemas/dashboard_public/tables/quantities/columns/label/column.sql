-- Revert: schemas/dashboard_public/tables/quantities/columns/label/column from pg

BEGIN;


ALTER TABLE "dashboard_public".quantities DROP COLUMN label;
COMMIT;  

