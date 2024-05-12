-- Deploy: schemas/dashboard_memberships_public/tables/app_grants/columns/is_grant/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/app_grants/table

BEGIN;

ALTER TABLE "dashboard_memberships_public".app_grants ADD COLUMN is_grant boolean;
COMMIT;
