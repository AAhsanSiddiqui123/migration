-- Deploy: schemas/dashboard_invites_public/tables/group_invites/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/group_invites/table

BEGIN;
GRANT DELETE ON TABLE "dashboard_invites_public".group_invites TO authenticated;
COMMIT;
