-- Deploy: schemas/dashboard_memberships_private/tables/app_memberships_acl/alterations/alt0000000076 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_private/schema
-- requires: schemas/dashboard_memberships_private/tables/app_memberships_acl/table

BEGIN;

ALTER TABLE "dashboard_memberships_private".app_memberships_acl
    DISABLE ROW LEVEL SECURITY;
COMMIT;
