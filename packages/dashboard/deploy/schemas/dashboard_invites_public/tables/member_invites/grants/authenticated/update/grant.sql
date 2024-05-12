-- Deploy: schemas/dashboard_invites_public/tables/member_invites/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/member_invites/table

BEGIN;
GRANT UPDATE ON TABLE "dashboard_invites_public".member_invites TO authenticated;
COMMIT;
