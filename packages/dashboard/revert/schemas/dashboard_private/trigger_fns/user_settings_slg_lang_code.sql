-- Revert: schemas/dashboard_private/trigger_fns/user_settings_slg_lang_code from pg

BEGIN;
DROP FUNCTION "dashboard_private".user_settings_slg_lang_code;
COMMIT;  

