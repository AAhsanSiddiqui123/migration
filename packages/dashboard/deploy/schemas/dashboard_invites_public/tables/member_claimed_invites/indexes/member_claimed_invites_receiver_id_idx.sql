-- Deploy: schemas/dashboard_invites_public/tables/member_claimed_invites/indexes/member_claimed_invites_receiver_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/member_claimed_invites/table
-- requires: schemas/dashboard_invites_public/tables/member_claimed_invites/columns/receiver_id/column

BEGIN;
CREATE INDEX member_claimed_invites_receiver_id_idx ON "dashboard_invites_public".member_claimed_invites (receiver_id);
COMMIT;
