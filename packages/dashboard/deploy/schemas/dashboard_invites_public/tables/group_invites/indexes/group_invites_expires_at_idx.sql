-- Deploy: schemas/dashboard_invites_public/tables/group_invites/indexes/group_invites_expires_at_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/group_invites/table
-- requires: schemas/dashboard_invites_public/tables/group_invites/columns/expires_at/column

BEGIN;
CREATE INDEX group_invites_expires_at_idx ON "dashboard_invites_public".group_invites (expires_at);
COMMIT;
