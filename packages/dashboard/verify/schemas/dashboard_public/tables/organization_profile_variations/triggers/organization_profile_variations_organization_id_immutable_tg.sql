-- Verify: schemas/dashboard_public/tables/organization_profile_variations/triggers/organization_profile_variations_organization_id_immutable_tg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.organization_profile_variations_organization_id_immutable_tg');
COMMIT;  

