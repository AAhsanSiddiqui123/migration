-- Verify: schemas/dashboard_private/trigger_fns/user_saved_actions_denorm_action_id on pg

BEGIN;
SELECT verify_function('dashboard_private.user_saved_actions_denorm_action_id');
COMMIT;  

