-- Verify: schemas/dashboard_private/trigger_fns/track_types_inf_ref on pg

BEGIN;
SELECT verify_function('dashboard_private.track_types_inf_ref');
COMMIT;  

