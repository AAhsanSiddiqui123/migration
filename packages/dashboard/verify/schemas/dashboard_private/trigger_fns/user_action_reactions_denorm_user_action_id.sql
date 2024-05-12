-- Verify: schemas/dashboard_private/trigger_fns/user_action_reactions_denorm_user_action_id on pg

BEGIN;
SELECT verify_function('dashboard_private.user_action_reactions_denorm_user_action_id');
COMMIT;  

