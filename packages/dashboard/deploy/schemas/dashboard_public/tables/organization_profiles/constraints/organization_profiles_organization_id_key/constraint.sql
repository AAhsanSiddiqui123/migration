-- Deploy: schemas/dashboard_public/tables/organization_profiles/constraints/organization_profiles_organization_id_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/organization_profiles/table

BEGIN;

ALTER TABLE "dashboard_public".organization_profiles
    ADD CONSTRAINT organization_profiles_organization_id_key UNIQUE (organization_id);
COMMIT;
