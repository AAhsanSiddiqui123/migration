-- Deploy: schemas/dashboard_memberships_public/tables/group_memberships/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/group_memberships/table

BEGIN;
GRANT DELETE ON TABLE "dashboard_memberships_public".group_memberships TO authenticated;
COMMIT;
