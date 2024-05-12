-- Revert: schemas/dashboard_private/trigger_fns/object_records_denorm_object_id from pg

BEGIN;
DROP FUNCTION "dashboard_private".object_records_denorm_object_id;
COMMIT;  

