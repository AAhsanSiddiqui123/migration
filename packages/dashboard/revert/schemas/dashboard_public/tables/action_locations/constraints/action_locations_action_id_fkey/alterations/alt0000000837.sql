-- Revert: schemas/dashboard_public/tables/action_locations/constraints/action_locations_action_id_fkey/alterations/alt0000000837 from pg

BEGIN;
COMMENT ON CONSTRAINT action_locations_action_id_fkey ON "dashboard_public".action_locations IS NULL;
COMMIT;  

