-- Revert: schemas/dashboard_public/tables/location_types/table from pg

BEGIN;
DROP TABLE "dashboard_public".location_types;
COMMIT;  

