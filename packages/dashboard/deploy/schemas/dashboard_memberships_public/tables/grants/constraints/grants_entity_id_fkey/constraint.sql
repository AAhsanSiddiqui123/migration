-- Deploy: schemas/dashboard_memberships_public/tables/grants/constraints/grants_entity_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_public/tables/users/table
-- requires: schemas/dashboard_public/tables/users/columns/id/column
-- requires: schemas/dashboard_memberships_public/tables/grants/table
-- requires: schemas/dashboard_memberships_public/tables/grants/columns/entity_id/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".grants 
    ADD CONSTRAINT grants_entity_id_fkey 
    FOREIGN KEY (entity_id)
    REFERENCES "dashboard_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
