-- Revert: schemas/dashboard_private/trigger_fns/language_dictionary_slg_lang_code from pg

BEGIN;
DROP FUNCTION "dashboard_private".language_dictionary_slg_lang_code;
COMMIT;  

