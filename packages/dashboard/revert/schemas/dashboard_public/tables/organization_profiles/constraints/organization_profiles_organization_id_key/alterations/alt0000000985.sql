-- Revert: schemas/dashboard_public/tables/organization_profiles/constraints/organization_profiles_organization_id_key/alterations/alt0000000985 from pg

BEGIN;
COMMENT ON CONSTRAINT organization_profiles_organization_id_key ON "dashboard_public".organization_profiles IS NULL;
COMMIT;  

