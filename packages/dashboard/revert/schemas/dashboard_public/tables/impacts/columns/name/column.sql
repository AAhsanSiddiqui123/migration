-- Revert: schemas/dashboard_public/tables/impacts/columns/name/column from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts DROP COLUMN name;
COMMIT;  

