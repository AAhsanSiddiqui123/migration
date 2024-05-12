-- Revert: schemas/dashboard_public/tables/action_item_locations/columns/coords/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_locations DROP COLUMN coords;
COMMIT;  

