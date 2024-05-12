-- Revert: schemas/dashboard_private/trigger_fns/related_actions_denorm_action_id from pg

BEGIN;
DROP FUNCTION "dashboard_private".related_actions_denorm_action_id;
COMMIT;  

