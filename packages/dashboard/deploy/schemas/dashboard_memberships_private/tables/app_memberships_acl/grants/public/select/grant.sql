-- Deploy: schemas/dashboard_memberships_private/tables/app_memberships_acl/grants/public/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_private/schema
-- requires: schemas/dashboard_memberships_private/tables/app_memberships_acl/table

BEGIN;
GRANT SELECT ON TABLE "dashboard_memberships_private".app_memberships_acl TO public;
COMMIT;
