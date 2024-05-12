-- Revert: schemas/dashboard_public/tables/action_item_locations/constraints/action_item_locations_action_item_id_fkey/alterations/alt0000001602 from pg

BEGIN;
COMMENT ON CONSTRAINT action_item_locations_action_item_id_fkey ON "dashboard_public".action_item_locations IS NULL;
COMMIT;  

