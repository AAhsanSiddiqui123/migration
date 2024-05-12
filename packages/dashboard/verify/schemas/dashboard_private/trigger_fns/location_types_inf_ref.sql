-- Verify: schemas/dashboard_private/trigger_fns/location_types_inf_ref on pg

BEGIN;
SELECT verify_function('dashboard_private.location_types_inf_ref');
COMMIT;  

