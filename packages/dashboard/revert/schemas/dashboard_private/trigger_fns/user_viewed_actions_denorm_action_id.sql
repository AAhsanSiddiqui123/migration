-- Revert: schemas/dashboard_private/trigger_fns/user_viewed_actions_denorm_action_id from pg

BEGIN;
DROP FUNCTION "dashboard_private".user_viewed_actions_denorm_action_id;
COMMIT;  

