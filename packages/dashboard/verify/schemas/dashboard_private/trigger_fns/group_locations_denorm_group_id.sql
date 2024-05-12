-- Verify: schemas/dashboard_private/trigger_fns/group_locations_denorm_group_id on pg

BEGIN;
SELECT verify_function('dashboard_private.group_locations_denorm_group_id');
COMMIT;  

