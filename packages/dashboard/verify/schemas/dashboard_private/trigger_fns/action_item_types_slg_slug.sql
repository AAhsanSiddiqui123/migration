-- Verify: schemas/dashboard_private/trigger_fns/action_item_types_slg_slug on pg

BEGIN;
SELECT verify_function('dashboard_private.action_item_types_slg_slug');
COMMIT;  

