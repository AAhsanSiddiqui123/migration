-- Deploy: schemas/dashboard_public/tables/organization_profiles/constraints/organization_profiles_organization_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/users/table
-- requires: schemas/dashboard_public/tables/users/columns/id/column
-- requires: schemas/dashboard_public/tables/organization_profiles/table
-- requires: schemas/dashboard_public/tables/organization_profiles/columns/organization_id/column

BEGIN;

ALTER TABLE "dashboard_public".organization_profiles 
    ADD CONSTRAINT organization_profiles_organization_id_fkey 
    FOREIGN KEY (organization_id)
    REFERENCES "dashboard_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
