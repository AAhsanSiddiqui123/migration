-- Deploy: schemas/dashboard_memberships_public/tables/membership_types/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/membership_types/table

BEGIN;
GRANT SELECT ON TABLE "dashboard_memberships_public".membership_types TO authenticated;
COMMIT;
