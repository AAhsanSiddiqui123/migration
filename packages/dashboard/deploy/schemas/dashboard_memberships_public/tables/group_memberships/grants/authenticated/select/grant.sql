-- Deploy: schemas/dashboard_memberships_public/tables/group_memberships/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/group_memberships/table

BEGIN;
GRANT SELECT ON TABLE "dashboard_memberships_public".group_memberships TO authenticated;
COMMIT;
