-- Deploy: schemas/dashboard_memberships_public/tables/group_grants/columns/permissions/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/group_grants/table

BEGIN;

ALTER TABLE "dashboard_memberships_public".group_grants ADD COLUMN permissions bit(32);
COMMIT;
