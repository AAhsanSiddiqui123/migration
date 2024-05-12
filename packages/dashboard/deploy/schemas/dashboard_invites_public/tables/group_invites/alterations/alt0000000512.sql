-- Deploy: schemas/dashboard_invites_public/tables/group_invites/alterations/alt0000000512 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/group_invites/table

BEGIN;

ALTER TABLE "dashboard_invites_public".group_invites
    DISABLE ROW LEVEL SECURITY;
COMMIT;
