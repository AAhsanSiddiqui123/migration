-- Verify: schemas/dashboard_private/trigger_fns/action_language_variations_slg_lang_code on pg

BEGIN;
SELECT verify_function('dashboard_private.action_language_variations_slg_lang_code');
COMMIT;  

