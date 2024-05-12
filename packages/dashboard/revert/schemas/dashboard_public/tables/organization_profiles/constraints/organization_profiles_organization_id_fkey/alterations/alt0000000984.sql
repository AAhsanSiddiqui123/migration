-- Revert: schemas/dashboard_public/tables/organization_profiles/constraints/organization_profiles_organization_id_fkey/alterations/alt0000000984 from pg

BEGIN;
COMMENT ON CONSTRAINT organization_profiles_organization_id_fkey ON "dashboard_public".organization_profiles IS NULL;
COMMIT;  

