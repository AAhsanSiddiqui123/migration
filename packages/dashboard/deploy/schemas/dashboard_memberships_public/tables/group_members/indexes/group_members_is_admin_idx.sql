-- Deploy: schemas/dashboard_memberships_public/tables/group_members/indexes/group_members_is_admin_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/group_members/table
-- requires: schemas/dashboard_memberships_public/tables/group_members/columns/is_admin/column

BEGIN;
CREATE INDEX group_members_is_admin_idx ON "dashboard_memberships_public".group_members (is_admin);
COMMIT;
