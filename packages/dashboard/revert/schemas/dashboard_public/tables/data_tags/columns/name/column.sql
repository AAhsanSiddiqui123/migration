-- Revert: schemas/dashboard_public/tables/data_tags/columns/name/column from pg

BEGIN;


ALTER TABLE "dashboard_public".data_tags DROP COLUMN name;
COMMIT;  

