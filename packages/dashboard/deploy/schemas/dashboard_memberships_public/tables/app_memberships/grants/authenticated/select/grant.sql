-- Deploy: schemas/dashboard_memberships_public/tables/app_memberships/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/app_memberships/table

BEGIN;
GRANT SELECT ON TABLE "dashboard_memberships_public".app_memberships TO authenticated;
COMMIT;
