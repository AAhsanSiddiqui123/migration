-- Revert: schemas/dashboard_public/tables/quantities/columns/unit/column from pg

BEGIN;


ALTER TABLE "dashboard_public".quantities DROP COLUMN unit;
COMMIT;  

