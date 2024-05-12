-- Revert: schemas/dashboard_public/tables/action_locations/triggers/action_locations_owner_id_immutable_tg from pg

BEGIN;
DROP TRIGGER action_locations_owner_id_immutable_tg ON "dashboard_public".action_locations;
COMMIT;  

