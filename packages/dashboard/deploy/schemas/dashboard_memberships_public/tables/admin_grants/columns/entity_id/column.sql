-- Deploy: schemas/dashboard_memberships_public/tables/admin_grants/columns/entity_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/admin_grants/table

BEGIN;

ALTER TABLE "dashboard_memberships_public".admin_grants ADD COLUMN entity_id uuid;
COMMIT;
