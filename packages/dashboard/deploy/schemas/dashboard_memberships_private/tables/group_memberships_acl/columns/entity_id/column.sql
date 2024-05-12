-- Deploy: schemas/dashboard_memberships_private/tables/group_memberships_acl/columns/entity_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_private/schema
-- requires: schemas/dashboard_memberships_private/tables/group_memberships_acl/table

BEGIN;

ALTER TABLE "dashboard_memberships_private".group_memberships_acl ADD COLUMN entity_id uuid;
COMMIT;
