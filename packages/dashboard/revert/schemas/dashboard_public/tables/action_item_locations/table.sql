-- Revert: schemas/dashboard_public/tables/action_item_locations/table from pg

BEGIN;
DROP TABLE "dashboard_public".action_item_locations;
COMMIT;  

