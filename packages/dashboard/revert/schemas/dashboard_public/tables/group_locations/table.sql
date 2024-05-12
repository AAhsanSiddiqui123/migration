-- Revert: schemas/dashboard_public/tables/group_locations/table from pg

BEGIN;
DROP TABLE "dashboard_public".group_locations;
COMMIT;  

