-- Revert: schemas/dashboard_private/trigger_fns/user_action_items_denorm_action_item_id from pg

BEGIN;
DROP FUNCTION "dashboard_private".user_action_items_denorm_action_item_id;
COMMIT;  

