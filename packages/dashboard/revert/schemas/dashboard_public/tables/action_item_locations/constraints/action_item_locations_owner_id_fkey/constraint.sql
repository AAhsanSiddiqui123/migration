-- Revert: schemas/dashboard_public/tables/action_item_locations/constraints/action_item_locations_owner_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_locations 
    DROP CONSTRAINT action_item_locations_owner_id_fkey;

COMMIT;  

