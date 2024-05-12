-- Deploy: schemas/dashboard_public/tables/organization_profiles/constraints/organization_profiles_organization_id_fkey/alterations/alt0000000984 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/organization_profiles/constraints/organization_profiles_organization_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT organization_profiles_organization_id_fkey ON "dashboard_public".organization_profiles IS E'@omit manyToMany';
COMMIT;
