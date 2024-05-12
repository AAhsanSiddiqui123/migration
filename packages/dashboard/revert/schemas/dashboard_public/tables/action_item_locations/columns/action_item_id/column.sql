-- Revert: schemas/dashboard_public/tables/action_item_locations/columns/action_item_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_locations DROP COLUMN action_item_id;
COMMIT;  

