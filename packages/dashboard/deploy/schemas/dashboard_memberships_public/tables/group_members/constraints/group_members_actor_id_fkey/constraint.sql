-- Deploy: schemas/dashboard_memberships_public/tables/group_members/constraints/group_members_actor_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_public/tables/users/table
-- requires: schemas/dashboard_public/tables/users/columns/id/column
-- requires: schemas/dashboard_memberships_public/tables/group_members/table
-- requires: schemas/dashboard_memberships_public/tables/group_members/columns/actor_id/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".group_members 
    ADD CONSTRAINT group_members_actor_id_fkey 
    FOREIGN KEY (actor_id)
    REFERENCES "dashboard_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
