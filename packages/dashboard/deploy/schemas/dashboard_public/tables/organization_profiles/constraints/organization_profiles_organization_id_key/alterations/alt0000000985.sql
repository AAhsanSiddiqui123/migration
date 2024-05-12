-- Deploy: schemas/dashboard_public/tables/organization_profiles/constraints/organization_profiles_organization_id_key/alterations/alt0000000985 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/organization_profiles/constraints/organization_profiles_organization_id_key/constraint

BEGIN;
COMMENT ON CONSTRAINT organization_profiles_organization_id_key ON "dashboard_public".organization_profiles IS E'@omit';
COMMIT;
