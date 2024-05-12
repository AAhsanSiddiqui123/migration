-- Revert: schemas/dashboard_public/tables/location_types/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".location_types DROP COLUMN id;
COMMIT;  

