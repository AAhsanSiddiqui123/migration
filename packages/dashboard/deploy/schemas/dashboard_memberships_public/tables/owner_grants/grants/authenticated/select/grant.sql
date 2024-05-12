-- Deploy: schemas/dashboard_memberships_public/tables/owner_grants/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/owner_grants/table

BEGIN;
GRANT SELECT ON TABLE "dashboard_memberships_public".owner_grants TO authenticated;
COMMIT;
