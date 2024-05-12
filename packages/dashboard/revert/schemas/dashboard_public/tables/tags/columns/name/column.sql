-- Revert: schemas/dashboard_public/tables/tags/columns/name/column from pg

BEGIN;


ALTER TABLE "dashboard_public".tags DROP COLUMN name;
COMMIT;  

