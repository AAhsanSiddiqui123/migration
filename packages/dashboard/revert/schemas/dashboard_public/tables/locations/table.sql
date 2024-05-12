-- Revert: schemas/dashboard_public/tables/locations/table from pg

BEGIN;
DROP TABLE "dashboard_public".locations;
COMMIT;  

