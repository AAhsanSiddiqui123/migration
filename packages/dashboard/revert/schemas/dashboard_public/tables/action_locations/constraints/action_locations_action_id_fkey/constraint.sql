-- Revert: schemas/dashboard_public/tables/action_locations/constraints/action_locations_action_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".action_locations 
    DROP CONSTRAINT action_locations_action_id_fkey;

COMMIT;  

