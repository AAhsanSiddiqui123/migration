-- Deploy: schemas/dashboard_memberships_public/tables/membership_defaults/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/membership_defaults/table

BEGIN;
GRANT DELETE ON TABLE "dashboard_memberships_public".membership_defaults TO authenticated;
COMMIT;
