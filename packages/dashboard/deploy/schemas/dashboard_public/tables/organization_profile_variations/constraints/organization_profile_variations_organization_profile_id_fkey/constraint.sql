-- Deploy: schemas/dashboard_public/tables/organization_profile_variations/constraints/organization_profile_variations_organization_profile_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/organization_profiles/table
-- requires: schemas/dashboard_public/tables/organization_profile_variations/table
-- requires: schemas/dashboard_public/tables/organization_profiles/columns/id/column
-- requires: schemas/dashboard_public/tables/organization_profile_variations/columns/organization_profile_id/column

BEGIN;

ALTER TABLE "dashboard_public".organization_profile_variations 
    ADD CONSTRAINT organization_profile_variations_organization_profile_id_fkey 
    FOREIGN KEY (organization_profile_id)
    REFERENCES "dashboard_public".organization_profiles (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
