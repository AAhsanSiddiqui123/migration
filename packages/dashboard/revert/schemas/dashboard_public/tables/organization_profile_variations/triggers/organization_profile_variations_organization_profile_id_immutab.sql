-- Revert: schemas/dashboard_public/tables/organization_profile_variations/triggers/organization_profile_variations_organization_profile_id_immutab from pg

BEGIN;
DROP TRIGGER organization_profile_variations_organization_profile_id_immutab ON "dashboard_public".organization_profile_variations;
COMMIT;  

