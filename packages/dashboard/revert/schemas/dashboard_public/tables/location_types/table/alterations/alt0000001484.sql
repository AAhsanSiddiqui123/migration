-- Revert: schemas/dashboard_public/tables/location_types/table/alterations/alt0000001484 from pg

BEGIN;
DROP TABLE "dashboard_public".location_types;
COMMIT;  

