-- Revert: schemas/dashboard_public/tables/action_item_locations/columns/action_id/alterations/alt0000001609 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_locations 
    ALTER COLUMN action_id DROP DEFAULT;

COMMIT;  

