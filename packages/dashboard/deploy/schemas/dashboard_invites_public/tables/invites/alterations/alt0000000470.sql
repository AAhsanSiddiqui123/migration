-- Deploy: schemas/dashboard_invites_public/tables/invites/alterations/alt0000000470 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/invites/table

BEGIN;

ALTER TABLE "dashboard_invites_public".invites
    DISABLE ROW LEVEL SECURITY;
COMMIT;
