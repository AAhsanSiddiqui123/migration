-- Revert: schemas/dashboard_private/trigger_fns/action_items_denorm_action_id from pg

BEGIN;
DROP FUNCTION "dashboard_private".action_items_denorm_action_id;
COMMIT;  

