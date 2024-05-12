-- Deploy: schemas/dashboard_memberships_public/tables/memberships/columns/permissions/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/memberships/table

BEGIN;

ALTER TABLE "dashboard_memberships_public".memberships ADD COLUMN permissions bit(32);
COMMIT;
