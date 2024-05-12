-- Revert: schemas/dashboard_public/tables/units/columns/value/column from pg

BEGIN;


ALTER TABLE "dashboard_public".units DROP COLUMN value;
COMMIT;  

