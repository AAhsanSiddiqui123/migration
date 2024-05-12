-- Deploy: schemas/dashboard_memberships_public/tables/group_grants/columns/id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/group_grants/table

BEGIN;

ALTER TABLE "dashboard_memberships_public".group_grants ADD COLUMN id uuid;
COMMIT;
