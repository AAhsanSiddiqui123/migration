-- Revert: schemas/dashboard_public/tables/organization_profiles/indexes/organization_profiles_organization_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".organization_profiles_organization_id_idx;
COMMIT;  

