-- Deploy: schemas/dashboard_memberships_public/tables/group_members/columns/id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/group_members/table

BEGIN;

ALTER TABLE "dashboard_memberships_public".group_members ADD COLUMN id uuid;
COMMIT;
