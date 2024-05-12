-- Verify: schemas/dashboard_private/trigger_fns/language_dictionary_slg_lang_code on pg

BEGIN;
SELECT verify_function('dashboard_private.language_dictionary_slg_lang_code');
COMMIT;  

