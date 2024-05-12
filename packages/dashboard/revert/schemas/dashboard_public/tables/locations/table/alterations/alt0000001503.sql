-- Revert: schemas/dashboard_public/tables/locations/table/alterations/alt0000001503 from pg

BEGIN;
DROP TABLE "dashboard_public".locations;
COMMIT;  

