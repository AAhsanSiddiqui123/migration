-- Revert: schemas/dashboard_private/trigger_fns/user_action_reactions_denorm_user_action_id from pg

BEGIN;
DROP FUNCTION "dashboard_private".user_action_reactions_denorm_user_action_id;
COMMIT;  

