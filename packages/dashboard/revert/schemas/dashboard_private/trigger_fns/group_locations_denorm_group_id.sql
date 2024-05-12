-- Revert: schemas/dashboard_private/trigger_fns/group_locations_denorm_group_id from pg

BEGIN;
DROP FUNCTION "dashboard_private".group_locations_denorm_group_id;
COMMIT;  

