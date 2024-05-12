-- Deploy: schemas/dashboard_memberships_public/tables/members/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/members/table

BEGIN;
GRANT SELECT ON TABLE "dashboard_memberships_public".members TO authenticated;
COMMIT;
