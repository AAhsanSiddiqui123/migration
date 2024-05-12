-- Revert: schemas/dashboard_public/tables/quantities/columns/name/column from pg

BEGIN;


ALTER TABLE "dashboard_public".quantities DROP COLUMN name;
COMMIT;  

