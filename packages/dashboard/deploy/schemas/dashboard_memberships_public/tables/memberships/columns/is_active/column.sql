-- Deploy: schemas/dashboard_memberships_public/tables/memberships/columns/is_active/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/memberships/table

BEGIN;

ALTER TABLE "dashboard_memberships_public".memberships ADD COLUMN is_active boolean;
COMMIT;
