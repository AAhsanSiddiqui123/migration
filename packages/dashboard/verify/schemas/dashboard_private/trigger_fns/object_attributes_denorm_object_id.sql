-- Verify: schemas/dashboard_private/trigger_fns/object_attributes_denorm_object_id on pg

BEGIN;
SELECT verify_function('dashboard_private.object_attributes_denorm_object_id');
COMMIT;  

