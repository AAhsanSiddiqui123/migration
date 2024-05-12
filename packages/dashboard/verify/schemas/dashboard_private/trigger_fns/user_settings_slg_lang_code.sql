-- Verify: schemas/dashboard_private/trigger_fns/user_settings_slg_lang_code on pg

BEGIN;
SELECT verify_function('dashboard_private.user_settings_slg_lang_code');
COMMIT;  

