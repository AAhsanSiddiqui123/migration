-- Deploy: schemas/dashboard_invites_public/tables/member_claimed_invites/constraints/member_claimed_invites_sender_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_public/tables/users/table
-- requires: schemas/dashboard_public/tables/users/columns/id/column
-- requires: schemas/dashboard_invites_public/tables/member_claimed_invites/table
-- requires: schemas/dashboard_invites_public/tables/member_claimed_invites/columns/sender_id/column

BEGIN;

ALTER TABLE "dashboard_invites_public".member_claimed_invites 
    ADD CONSTRAINT member_claimed_invites_sender_id_fkey 
    FOREIGN KEY (sender_id)
    REFERENCES "dashboard_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
