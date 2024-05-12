-- Revert: schemas/dashboard_public/tables/group_locations/triggers/_000000000_ensure_update_group_id from pg

BEGIN;
DROP TRIGGER _000000000_ensure_update_group_id ON "dashboard_public".group_locations;
COMMIT;  

