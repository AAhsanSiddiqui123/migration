-- Revert: schemas/dashboard_private/trigger_fns/global_languages_slg_lang_code from pg

BEGIN;
DROP FUNCTION "dashboard_private".global_languages_slg_lang_code;
COMMIT;  

