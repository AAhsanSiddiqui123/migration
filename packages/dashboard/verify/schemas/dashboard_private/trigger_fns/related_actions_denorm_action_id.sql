-- Verify: schemas/dashboard_private/trigger_fns/related_actions_denorm_action_id on pg

BEGIN;
SELECT verify_function('dashboard_private.related_actions_denorm_action_id');
COMMIT;  

