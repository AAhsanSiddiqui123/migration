-- Deploy: schemas/dashboard_public/tables/organization_profile_variations/constraints/organization_profile_variations_organization_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/users/table
-- requires: schemas/dashboard_public/tables/users/columns/id/column
-- requires: schemas/dashboard_public/tables/organization_profile_variations/table
-- requires: schemas/dashboard_public/tables/organization_profile_variations/columns/organization_id/column

BEGIN;

ALTER TABLE "dashboard_public".organization_profile_variations 
    ADD CONSTRAINT organization_profile_variations_organization_id_fkey 
    FOREIGN KEY (organization_id)
    REFERENCES "dashboard_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
