-- Deploy: schemas/dashboard_memberships_public/tables/group_memberships/indexes/group_memberships_is_admin_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/group_memberships/table
-- requires: schemas/dashboard_memberships_public/tables/group_memberships/columns/is_admin/column

BEGIN;
CREATE INDEX group_memberships_is_admin_idx ON "dashboard_memberships_public".group_memberships (is_admin);
COMMIT;
