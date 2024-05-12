-- Revert: schemas/dashboard_public/tables/action_item_locations/constraints/action_item_locations_location_id_fkey/alterations/alt0000001603 from pg

BEGIN;
COMMENT ON CONSTRAINT action_item_locations_location_id_fkey ON "dashboard_public".action_item_locations IS NULL;
COMMIT;  

