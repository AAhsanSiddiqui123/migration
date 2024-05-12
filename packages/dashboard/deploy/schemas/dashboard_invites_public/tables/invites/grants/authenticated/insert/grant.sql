-- Deploy: schemas/dashboard_invites_public/tables/invites/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/invites/table

BEGIN;
GRANT INSERT ( email, expires_at, multiple, invite_limit ) ON TABLE "dashboard_invites_public".invites TO authenticated;
COMMIT;
