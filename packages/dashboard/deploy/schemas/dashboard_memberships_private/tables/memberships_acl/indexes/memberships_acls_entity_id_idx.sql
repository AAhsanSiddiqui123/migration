-- Deploy: schemas/dashboard_memberships_private/tables/memberships_acl/indexes/memberships_acls_entity_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_private/schema
-- requires: schemas/dashboard_memberships_private/tables/memberships_acl/table
-- requires: schemas/dashboard_memberships_private/tables/memberships_acl/columns/is_admin/column
-- requires: schemas/dashboard_memberships_private/tables/memberships_acl/columns/is_owner/column
-- requires: schemas/dashboard_memberships_private/tables/memberships_acl/columns/entity_id/column
-- requires: schemas/dashboard_memberships_private/tables/memberships_acl/columns/permissions/column

BEGIN;
CREATE INDEX memberships_acls_entity_id_idx ON "dashboard_memberships_private".memberships_acl (entity_id) INCLUDE (permissions, is_owner, is_admin);
COMMIT;
