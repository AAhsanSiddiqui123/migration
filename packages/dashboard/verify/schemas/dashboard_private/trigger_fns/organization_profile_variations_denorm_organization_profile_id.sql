-- Verify: schemas/dashboard_private/trigger_fns/organization_profile_variations_denorm_organization_profile_id on pg

BEGIN;
SELECT verify_function('dashboard_private.organization_profile_variations_denorm_organization_profile_id');
COMMIT;  

