-- Deploy: schemas/dashboard_memberships_public/tables/app_owner_grants/columns/id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/app_owner_grants/table

BEGIN;

ALTER TABLE "dashboard_memberships_public".app_owner_grants ADD COLUMN id uuid;
COMMIT;
