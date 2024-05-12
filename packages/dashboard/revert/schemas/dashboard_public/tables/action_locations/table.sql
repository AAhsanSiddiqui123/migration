-- Revert: schemas/dashboard_public/tables/action_locations/table from pg

BEGIN;
DROP TABLE "dashboard_public".action_locations;
COMMIT;  

