-- Revert: schemas/dashboard_public/tables/action_item_locations/columns/id/alterations/alt0000001599 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_locations 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

