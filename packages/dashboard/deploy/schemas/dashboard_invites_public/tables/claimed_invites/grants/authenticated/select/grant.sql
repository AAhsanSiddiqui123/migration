-- Deploy: schemas/dashboard_invites_public/tables/claimed_invites/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/claimed_invites/table

BEGIN;
GRANT SELECT ON TABLE "dashboard_invites_public".claimed_invites TO authenticated;
COMMIT;
