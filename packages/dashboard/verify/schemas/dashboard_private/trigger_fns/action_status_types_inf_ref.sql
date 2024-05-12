-- Verify: schemas/dashboard_private/trigger_fns/action_status_types_inf_ref on pg

BEGIN;
SELECT verify_function('dashboard_private.action_status_types_inf_ref');
COMMIT;  

