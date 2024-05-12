-- Revert: schemas/dashboard_public/tables/action_locations/constraints/action_locations_owner_id_fkey/alterations/alt0000000839 from pg

BEGIN;
COMMENT ON CONSTRAINT action_locations_owner_id_fkey ON "dashboard_public".action_locations IS NULL;
COMMIT;  

