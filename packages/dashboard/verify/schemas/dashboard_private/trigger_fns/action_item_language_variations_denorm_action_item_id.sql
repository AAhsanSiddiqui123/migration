-- Verify: schemas/dashboard_private/trigger_fns/action_item_language_variations_denorm_action_item_id on pg

BEGIN;
SELECT verify_function('dashboard_private.action_item_language_variations_denorm_action_item_id');
COMMIT;  

