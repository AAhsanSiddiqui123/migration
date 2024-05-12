-- Revert: schemas/dashboard_public/tables/location_types/columns/name/column/alterations/alt0000001490 from pg

BEGIN;


ALTER TABLE "dashboard_public".location_types DROP COLUMN name;
COMMIT;  

