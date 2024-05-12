-- Revert: schemas/dashboard_private/trigger_fns/action_questions_denorm_action_id from pg

BEGIN;
DROP FUNCTION "dashboard_private".action_questions_denorm_action_id;
COMMIT;  

