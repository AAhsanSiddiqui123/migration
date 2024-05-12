-- Deploy: schemas/dashboard_invites_public/tables/group_invites/indexes/group_invites_invite_valid_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/group_invites/table
-- requires: schemas/dashboard_invites_public/tables/group_invites/columns/invite_valid/column

BEGIN;
CREATE INDEX group_invites_invite_valid_idx ON "dashboard_invites_public".group_invites (invite_valid);
COMMIT;
