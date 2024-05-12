-- Verify: schemas/dashboard_private/trigger_fns/action_impacts_denorm_action_id on pg

BEGIN;
SELECT verify_function('dashboard_private.action_impacts_denorm_action_id');
COMMIT;  

