-- Deploy: schemas/dashboard_invites_public/tables/group_claimed_invites/indexes/group_claimed_invites_sender_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/group_claimed_invites/table
-- requires: schemas/dashboard_invites_public/tables/group_claimed_invites/columns/sender_id/column

BEGIN;
CREATE INDEX group_claimed_invites_sender_id_idx ON "dashboard_invites_public".group_claimed_invites (sender_id);
COMMIT;
