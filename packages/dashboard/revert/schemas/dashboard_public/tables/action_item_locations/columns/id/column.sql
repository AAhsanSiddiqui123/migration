-- Revert: schemas/dashboard_public/tables/action_item_locations/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_locations DROP COLUMN id;
COMMIT;  

