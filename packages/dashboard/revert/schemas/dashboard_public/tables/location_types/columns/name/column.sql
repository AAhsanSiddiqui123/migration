-- Revert: schemas/dashboard_public/tables/location_types/columns/name/column from pg

BEGIN;


ALTER TABLE "dashboard_public".location_types DROP COLUMN name;
COMMIT;  

