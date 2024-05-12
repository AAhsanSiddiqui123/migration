-- Revert: schemas/dashboard_public/tables/group_locations/triggers/group_locations_group_id_immutable_tg from pg

BEGIN;
DROP TRIGGER group_locations_group_id_immutable_tg ON "dashboard_public".group_locations;
COMMIT;  

