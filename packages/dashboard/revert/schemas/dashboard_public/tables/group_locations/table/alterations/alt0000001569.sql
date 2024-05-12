-- Revert: schemas/dashboard_public/tables/group_locations/table/alterations/alt0000001569 from pg

BEGIN;
DROP TABLE "dashboard_public".group_locations;
COMMIT;  

