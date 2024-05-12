-- Revert: schemas/dashboard_private/trigger_fns/action_language_variations_slg_lang_code from pg

BEGIN;
DROP FUNCTION "dashboard_private".action_language_variations_slg_lang_code;
COMMIT;  

