-- Deploy: schemas/dashboard_public/tables/organization_profiles/indexes/organization_profiles_organization_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/organization_profiles/table
-- requires: schemas/dashboard_public/tables/organization_profiles/columns/organization_id/column

BEGIN;
CREATE INDEX organization_profiles_organization_id_idx ON "dashboard_public".organization_profiles (organization_id);
COMMIT;
