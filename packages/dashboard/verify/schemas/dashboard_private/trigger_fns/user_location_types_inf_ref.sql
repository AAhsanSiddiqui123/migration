-- Verify: schemas/dashboard_private/trigger_fns/user_location_types_inf_ref on pg

BEGIN;
SELECT verify_function('dashboard_private.user_location_types_inf_ref');
COMMIT;  

