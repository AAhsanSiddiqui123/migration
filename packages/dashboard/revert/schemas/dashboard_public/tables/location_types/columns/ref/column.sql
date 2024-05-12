-- Revert: schemas/dashboard_public/tables/location_types/columns/ref/column from pg

BEGIN;


ALTER TABLE "dashboard_public".location_types DROP COLUMN ref;
COMMIT;  

