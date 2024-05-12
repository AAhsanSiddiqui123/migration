-- Revert: schemas/dashboard_public/tables/organization_profile_variations/indexes/organization_profile_variations_organization_profile_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".organization_profile_variations_organization_profile_id_idx;
COMMIT;  

