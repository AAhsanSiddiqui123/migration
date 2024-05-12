-- Deploy: schemas/dashboard_invites_public/tables/member_invites/indexes/member_invites_invite_valid_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/member_invites/table
-- requires: schemas/dashboard_invites_public/tables/member_invites/columns/invite_valid/column

BEGIN;
CREATE INDEX member_invites_invite_valid_idx ON "dashboard_invites_public".member_invites (invite_valid);
COMMIT;
