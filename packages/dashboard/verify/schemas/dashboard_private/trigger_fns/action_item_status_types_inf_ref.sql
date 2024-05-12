-- Verify: schemas/dashboard_private/trigger_fns/action_item_status_types_inf_ref on pg

BEGIN;
SELECT verify_function('dashboard_private.action_item_status_types_inf_ref');
COMMIT;  

