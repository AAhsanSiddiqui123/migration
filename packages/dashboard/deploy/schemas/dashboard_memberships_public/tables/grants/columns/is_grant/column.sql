-- Deploy: schemas/dashboard_memberships_public/tables/grants/columns/is_grant/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/grants/table

BEGIN;

ALTER TABLE "dashboard_memberships_public".grants ADD COLUMN is_grant boolean;
COMMIT;
