-- Revert: schemas/dashboard_public/tables/action_item_locations/columns/action_item_id/alterations/alt0000001601 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_locations 
    ALTER COLUMN action_item_id DROP NOT NULL;


COMMIT;  

