-- Revert: schemas/dashboard_private/trigger_fns/user_answers_denorm_forms from pg

BEGIN;
DROP FUNCTION "dashboard_private".user_answers_denorm_forms;
COMMIT;  

