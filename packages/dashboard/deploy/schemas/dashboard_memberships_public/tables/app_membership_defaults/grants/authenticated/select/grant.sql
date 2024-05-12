-- Deploy: schemas/dashboard_memberships_public/tables/app_membership_defaults/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/app_membership_defaults/table

BEGIN;
GRANT SELECT ON TABLE "dashboard_memberships_public".app_membership_defaults TO authenticated;
COMMIT;
