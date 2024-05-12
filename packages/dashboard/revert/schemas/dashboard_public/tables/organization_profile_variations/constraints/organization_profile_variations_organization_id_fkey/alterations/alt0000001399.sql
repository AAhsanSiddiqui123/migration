-- Revert: schemas/dashboard_public/tables/organization_profile_variations/constraints/organization_profile_variations_organization_id_fkey/alterations/alt0000001399 from pg

BEGIN;
COMMENT ON CONSTRAINT organization_profile_variations_organization_id_fkey ON "dashboard_public".organization_profile_variations IS NULL;
COMMIT;  

