-- Deploy: schemas/dashboard_memberships_public/tables/memberships/columns/entity_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/memberships/table

BEGIN;

ALTER TABLE "dashboard_memberships_public".memberships ADD COLUMN entity_id uuid;
COMMIT;
