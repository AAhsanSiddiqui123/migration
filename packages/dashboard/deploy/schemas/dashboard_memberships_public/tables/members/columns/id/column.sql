-- Deploy: schemas/dashboard_memberships_public/tables/members/columns/id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/members/table

BEGIN;

ALTER TABLE "dashboard_memberships_public".members ADD COLUMN id uuid;
COMMIT;
