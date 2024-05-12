-- Deploy: schemas/dashboard_memberships_public/tables/memberships/constraints/memberships_entity_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_public/tables/users/table
-- requires: schemas/dashboard_public/tables/users/columns/id/column
-- requires: schemas/dashboard_memberships_public/tables/memberships/table
-- requires: schemas/dashboard_memberships_public/tables/memberships/columns/entity_id/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".memberships 
    ADD CONSTRAINT memberships_entity_id_fkey 
    FOREIGN KEY (entity_id)
    REFERENCES "dashboard_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
