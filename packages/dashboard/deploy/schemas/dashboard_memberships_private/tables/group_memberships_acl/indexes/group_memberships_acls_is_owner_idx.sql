-- Deploy: schemas/dashboard_memberships_private/tables/group_memberships_acl/indexes/group_memberships_acls_is_owner_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_private/schema
-- requires: schemas/dashboard_memberships_private/tables/group_memberships_acl/table
-- requires: schemas/dashboard_memberships_private/tables/group_memberships_acl/columns/is_owner/column

BEGIN;
CREATE INDEX group_memberships_acls_is_owner_idx ON "dashboard_memberships_private".group_memberships_acl (is_owner);
COMMIT;
