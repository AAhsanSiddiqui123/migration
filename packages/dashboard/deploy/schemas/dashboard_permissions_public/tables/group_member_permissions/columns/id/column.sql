-- Deploy: schemas/dashboard_permissions_public/tables/group_member_permissions/columns/id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_permissions_public/schema
-- requires: schemas/dashboard_permissions_public/tables/group_member_permissions/table

BEGIN;

ALTER TABLE "dashboard_permissions_public".group_member_permissions ADD COLUMN id uuid;
COMMIT;
