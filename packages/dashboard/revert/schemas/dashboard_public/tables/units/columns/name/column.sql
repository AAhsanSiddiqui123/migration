-- Revert: schemas/dashboard_public/tables/units/columns/name/column from pg

BEGIN;


ALTER TABLE "dashboard_public".units DROP COLUMN name;
COMMIT;  

