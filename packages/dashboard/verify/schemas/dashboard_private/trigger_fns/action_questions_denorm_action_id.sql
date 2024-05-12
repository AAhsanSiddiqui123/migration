-- Verify: schemas/dashboard_private/trigger_fns/action_questions_denorm_action_id on pg

BEGIN;
SELECT verify_function('dashboard_private.action_questions_denorm_action_id');
COMMIT;  

