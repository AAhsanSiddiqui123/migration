-- Deploy: schemas/dashboard_public/tables/organization_profile_variations/indexes/organization_profile_variations_organization_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/organization_profile_variations/table
-- requires: schemas/dashboard_public/tables/organization_profile_variations/columns/organization_id/column

BEGIN;
CREATE INDEX organization_profile_variations_organization_id_idx ON "dashboard_public".organization_profile_variations (organization_id);
COMMIT;
