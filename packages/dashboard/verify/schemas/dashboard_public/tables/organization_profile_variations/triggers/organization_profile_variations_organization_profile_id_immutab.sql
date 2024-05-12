-- Verify: schemas/dashboard_public/tables/organization_profile_variations/triggers/organization_profile_variations_organization_profile_id_immutab on pg

BEGIN;
SELECT verify_trigger('dashboard_public.organization_profile_variations_organization_profile_id_immutab');
COMMIT;  

