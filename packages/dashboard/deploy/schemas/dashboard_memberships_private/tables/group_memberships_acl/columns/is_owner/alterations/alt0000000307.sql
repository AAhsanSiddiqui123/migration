-- Deploy: schemas/dashboard_memberships_private/tables/group_memberships_acl/columns/is_owner/alterations/alt0000000307 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_private/schema
-- requires: schemas/dashboard_memberships_private/tables/group_memberships_acl/table
-- requires: schemas/dashboard_memberships_private/tables/group_memberships_acl/columns/is_owner/column

BEGIN;

ALTER TABLE "dashboard_memberships_private".group_memberships_acl 
    ALTER COLUMN is_owner SET DEFAULT false;
COMMIT;
