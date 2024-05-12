-- Revert: schemas/dashboard_private/trigger_fns/organization_profile_variations_slg_lang_code from pg

BEGIN;
DROP FUNCTION "dashboard_private".organization_profile_variations_slg_lang_code;
COMMIT;  

