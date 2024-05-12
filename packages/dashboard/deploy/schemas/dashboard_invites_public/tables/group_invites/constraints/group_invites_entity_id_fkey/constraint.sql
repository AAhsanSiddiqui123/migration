-- Deploy: schemas/dashboard_invites_public/tables/group_invites/constraints/group_invites_entity_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_public/tables/groups/table
-- requires: schemas/dashboard_public/tables/groups/columns/id/column
-- requires: schemas/dashboard_invites_public/tables/group_invites/table
-- requires: schemas/dashboard_invites_public/tables/group_invites/columns/entity_id/column

BEGIN;

ALTER TABLE "dashboard_invites_public".group_invites 
    ADD CONSTRAINT group_invites_entity_id_fkey 
    FOREIGN KEY (entity_id)
    REFERENCES "dashboard_public".groups (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
