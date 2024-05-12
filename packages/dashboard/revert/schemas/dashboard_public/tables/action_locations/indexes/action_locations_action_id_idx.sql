-- Revert: schemas/dashboard_public/tables/action_locations/indexes/action_locations_action_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".action_locations_action_id_idx;
COMMIT;  

