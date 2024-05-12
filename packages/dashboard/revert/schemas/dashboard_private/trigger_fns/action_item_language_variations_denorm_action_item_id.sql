-- Revert: schemas/dashboard_private/trigger_fns/action_item_language_variations_denorm_action_item_id from pg

BEGIN;
DROP FUNCTION "dashboard_private".action_item_language_variations_denorm_action_item_id;
COMMIT;  

