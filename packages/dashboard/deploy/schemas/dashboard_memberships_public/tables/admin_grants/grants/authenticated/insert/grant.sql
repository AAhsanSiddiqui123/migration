-- Deploy: schemas/dashboard_memberships_public/tables/admin_grants/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/admin_grants/table

BEGIN;
GRANT INSERT ON TABLE "dashboard_memberships_public".admin_grants TO authenticated;
COMMIT;
