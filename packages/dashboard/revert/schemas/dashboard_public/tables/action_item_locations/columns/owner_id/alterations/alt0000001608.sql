-- Revert: schemas/dashboard_public/tables/action_item_locations/columns/owner_id/alterations/alt0000001608 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_locations 
    ALTER COLUMN owner_id DROP DEFAULT;

COMMIT;  

