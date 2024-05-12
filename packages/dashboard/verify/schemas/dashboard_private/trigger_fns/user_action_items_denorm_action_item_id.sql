-- Verify: schemas/dashboard_private/trigger_fns/user_action_items_denorm_action_item_id on pg

BEGIN;
SELECT verify_function('dashboard_private.user_action_items_denorm_action_item_id');
COMMIT;  

