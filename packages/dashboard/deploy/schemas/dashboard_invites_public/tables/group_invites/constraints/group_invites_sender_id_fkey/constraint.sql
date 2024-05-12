-- Deploy: schemas/dashboard_invites_public/tables/group_invites/constraints/group_invites_sender_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_public/tables/users/table
-- requires: schemas/dashboard_public/tables/users/columns/id/column
-- requires: schemas/dashboard_invites_public/tables/group_invites/table
-- requires: schemas/dashboard_invites_public/tables/group_invites/columns/sender_id/column

BEGIN;

ALTER TABLE "dashboard_invites_public".group_invites 
    ADD CONSTRAINT group_invites_sender_id_fkey 
    FOREIGN KEY (sender_id)
    REFERENCES "dashboard_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
