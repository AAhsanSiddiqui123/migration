-- Revert: schemas/dashboard_private/trigger_fns/action_language_variations_denorm_action_id from pg

BEGIN;
DROP FUNCTION "dashboard_private".action_language_variations_denorm_action_id;
COMMIT;  

