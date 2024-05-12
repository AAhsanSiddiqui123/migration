-- Deploy: schemas/dashboard_memberships_public/tables/owner_grants/constraints/owner_grants_grantor_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_public/tables/users/table
-- requires: schemas/dashboard_public/tables/users/columns/id/column
-- requires: schemas/dashboard_memberships_public/tables/owner_grants/table
-- requires: schemas/dashboard_memberships_public/tables/owner_grants/columns/grantor_id/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".owner_grants 
    ADD CONSTRAINT owner_grants_grantor_id_fkey 
    FOREIGN KEY (grantor_id)
    REFERENCES "dashboard_public".users (id)
    ON DELETE SET NULL
    ON UPDATE NO ACTION;
COMMIT;
