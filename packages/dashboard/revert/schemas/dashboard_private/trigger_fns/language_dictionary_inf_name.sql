-- Revert: schemas/dashboard_private/trigger_fns/language_dictionary_inf_name from pg

BEGIN;
DROP FUNCTION "dashboard_private".language_dictionary_inf_name;
COMMIT;  

