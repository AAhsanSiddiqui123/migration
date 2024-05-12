-- Verify: schemas/dashboard_private/trigger_fns/organization_profile_variations_slg_lang_code on pg

BEGIN;
SELECT verify_function('dashboard_private.organization_profile_variations_slg_lang_code');
COMMIT;  

