-- Deploy: schemas/dashboard_memberships_public/tables/app_admin_grants/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/app_admin_grants/table

BEGIN;
GRANT SELECT ON TABLE "dashboard_memberships_public".app_admin_grants TO authenticated;
COMMIT;
