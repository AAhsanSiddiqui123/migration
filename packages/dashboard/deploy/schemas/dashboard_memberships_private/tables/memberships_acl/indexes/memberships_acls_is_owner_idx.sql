-- Deploy: schemas/dashboard_memberships_private/tables/memberships_acl/indexes/memberships_acls_is_owner_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_private/schema
-- requires: schemas/dashboard_memberships_private/tables/memberships_acl/table
-- requires: schemas/dashboard_memberships_private/tables/memberships_acl/columns/is_owner/column

BEGIN;
CREATE INDEX memberships_acls_is_owner_idx ON "dashboard_memberships_private".memberships_acl (is_owner);
COMMIT;
