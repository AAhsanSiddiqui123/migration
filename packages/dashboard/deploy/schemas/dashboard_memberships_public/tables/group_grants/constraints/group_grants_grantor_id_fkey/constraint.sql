-- Deploy: schemas/dashboard_memberships_public/tables/group_grants/constraints/group_grants_grantor_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_public/tables/users/table
-- requires: schemas/dashboard_public/tables/users/columns/id/column
-- requires: schemas/dashboard_memberships_public/tables/group_grants/table
-- requires: schemas/dashboard_memberships_public/tables/group_grants/columns/grantor_id/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".group_grants 
    ADD CONSTRAINT group_grants_grantor_id_fkey 
    FOREIGN KEY (grantor_id)
    REFERENCES "dashboard_public".users (id)
    ON DELETE SET NULL
    ON UPDATE NO ACTION;
COMMIT;
