-- Revert: schemas/dashboard_public/tables/action_item_locations/columns/poly/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_locations DROP COLUMN poly;
COMMIT;  

