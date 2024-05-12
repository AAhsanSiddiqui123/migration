-- Verify: schemas/dashboard_private/trigger_fns/language_dictionary_inf_name on pg

BEGIN;
SELECT verify_function('dashboard_private.language_dictionary_inf_name');
COMMIT;  

