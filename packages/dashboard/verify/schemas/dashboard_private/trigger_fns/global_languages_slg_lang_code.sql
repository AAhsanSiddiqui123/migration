-- Verify: schemas/dashboard_private/trigger_fns/global_languages_slg_lang_code on pg

BEGIN;
SELECT verify_function('dashboard_private.global_languages_slg_lang_code');
COMMIT;  

