-- Revert: schemas/dashboard_public/tables/action_item_locations/columns/id/alterations/alt0000001600 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_locations 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

