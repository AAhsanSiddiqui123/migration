-- Deploy: schemas/dashboard_invites_public/tables/invites/indexes/invites_invite_valid_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/invites/table
-- requires: schemas/dashboard_invites_public/tables/invites/columns/invite_valid/column

BEGIN;
CREATE INDEX invites_invite_valid_idx ON "dashboard_invites_public".invites (invite_valid);
COMMIT;
